const schedule = require('node-schedule');
const { getEmployeeData, getSupervisorMail } = require("./services/employeeService")
const {
  getLeaveData,
  getActiveEmployees,
  getSupervisorDetail,
} = require("./services/leaveService");
const {sendBirthdayEmailToSupervisor, sendLeaveEmailToSupervisor} = require('./services/email');
const {convertTZ, serverDateTime} = require('./helpers/functions')
const wrap = require('./helpers/logger');
require('dotenv').config()


const job = schedule.scheduleJob(process.env.MANAGER_SCHEDULER_TIMER, async function () {
  try {
    const employeeData = await getEmployeeData()

    const servertimezone = Intl.DateTimeFormat().resolvedOptions().timeZone

    const serverDate = new Date(Date.now()).toLocaleString("en-US", { timeZone: servertimezone })

    let birthdayArray = []
    const data = employeeData.map((data, index) => {

      const employeeName = (data.middle_name == null ? data.first_name + ' ' + data.last_name : data.first_name + ' ' + data.middle_name + ' ' + data.last_name)
      data['empName'] = employeeName
      const birthdayDate = new Date(data.birthday)
      const serverTimeZoneDate = convertTZ(serverDate, data.timezone)
      var weekEndDate = new Date(serverTimeZoneDate);
      weekEndDate.setDate(weekEndDate.getDate() + 7);
      const tempDate = new Date()
      const birthdayTempDate = new Date(tempDate.setMonth(birthdayDate.getMonth(), birthdayDate.getDate()))

      if (birthdayTempDate >= serverTimeZoneDate && birthdayTempDate <= weekEndDate) {
        birthdayArray.push(data)
      }
      return {
        ...employeeData,
        [index]: data,
      }
    })

    const filterBySupId = birthdayArray.reduce(function (obj, key) {
      obj[key.supervisor] = obj[key.supervisor] || []
      obj[key.supervisor].push(key)
      return obj
    }, Object.create(null))
    
    var supIds = Object.keys(filterBySupId)
    delete filterBySupId['null']
    var supMailData = await getSupervisorMail(supIds)

    supMailData.map((data) => {
      var supId = data?.id
      var supEmail = data?.supervisorMail
      var supName = (data?.middle_name == null ? data?.first_name + ' ' + data?.last_name : data?.first_name + ' ' + data?.middle_name + ' ' + data?.last_name)

      var emailData = filterBySupId?.[supId]

      sendBirthdayEmailToSupervisor(supName, supEmail, emailData)})
  } catch (error) {
    wrap.error(`Server Error:`, error)
  }
})

const leaveMailJob = schedule.scheduleJob(process.env.MANAGER_SCHEDULER_TIMER, async function () {
  try {
    let leaveArray = [];
    let clientTimeZoneDate, weekEndDate, leaveStartDate;
    const serverDate = serverDateTime()
    
    const employeeData = await getActiveEmployees();
    await Promise.all(
      employeeData.map(async (data, index) => {

        clientTimeZoneDate = convertTZ(serverDate, data.timezone).toISOString().split("T")[0];
        weekEndDate = new Date(clientTimeZoneDate);
        weekEndDate.setDate(weekEndDate.getDate() + 7);
        weekEndDate = weekEndDate.toISOString().split("T")[0]
        
        const empID = data.employee_id;
        const supID = data.supervisor;
        const empName =
          data.middle_name == null
            ? data.first_name + " " + data.last_name
            : data.first_name + " " + data.middle_name + " " + data.last_name;
        
        const approvedData = await getLeaveData(data.id,clientTimeZoneDate,weekEndDate);
        approvedData.map((data, index) => {
          leaveStartDate = data.date_start;
          data["supID"] = supID;
          data["empName"] = empName;
          data["empID"] = empID
          leaveArray.push(data);
        });
      })
    );
    
    const filterBySupId = leaveArray.reduce(function (obj, key) {
      obj[key.supID] = obj[key.supID] || [];
      obj[key.supID].push(key);
      return obj;
    }, Object.create(null));
    
    var supIds = Object.keys(filterBySupId);
    delete filterBySupId["null"];
    console.log(filterBySupId)
    var supMailData = await getSupervisorDetail(supIds);

    supMailData.map((data) => {
      var supId = data?.id;
      var supEmail = data?.supervisorMail;
      var supName =
        data?.middle_name == null
          ? data?.first_name + " " + data?.last_name
          : data?.first_name + " " + data?.middle_name + " " + data?.last_name;

      var emailData = filterBySupId?.[supId];

      sendLeaveEmailToSupervisor(supName, supEmail, emailData);
    });
  } catch (error) {
    wrap.error(`Server Error:`, error);
  }
});

