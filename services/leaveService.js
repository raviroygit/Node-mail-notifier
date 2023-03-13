const db = require("./../db");
const wrap = require("./../helpers/logger");

const getActiveEmployees = () => {
  return new Promise(function (resolve, reject) {
    let query = `Select e.id, e.employee_id, e.first_name, e.middle_name, e.last_name, e.supervisor, cs.timezone from employees e inner join companystructures cs on cs.id=e.department where e.status = 'active'`;
    db.query(query, function (err, rows) {
      if (rows === undefined) {
        reject(wrap.error(`Query ${err}`));
      } else {
        resolve(rows);
      }
    });
  });
};

const getSupervisorDetail = (supervisorID) => {
  return new Promise(function (resolve, reject) {
    let query = `Select id, first_name,middle_name,last_name,work_email as supervisorMail from employees where id IN (${supervisorID})`;
    db.query(query, function (err, rows) {
      if (rows === undefined) {
        reject(wrap.error(`Query ${err}`));
      } else {
        resolve(rows);
      }
    });
  });
};

const getLeaveData = (empID,fromDate, toDate) => {
  return new Promise(function (resolve, reject) {
    let query = `Select el.*, lt.name as leaveType from employeeleaves el inner join leavetypes lt on lt.id = el.leave_type where el.status='Approved' and el.employee=${empID} and el.date_start between '${fromDate}' and '${toDate}'`;
    db.query(query, function (err, rows) {
      if (rows === undefined) {
        reject(wrap.error(`Query ${err}`));
      } else {
        resolve(rows);
      }
    });
  });
};

module.exports = {
  getLeaveData,
  getActiveEmployees,
  getSupervisorDetail,
};
