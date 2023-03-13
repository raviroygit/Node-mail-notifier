const db = require('./../db')
const wrap = require('./../helpers/logger')

const getEmployeeData = () => {
    return new Promise(function (resolve, reject) {
            let query = `Select e.employee_id, e.first_name, e.middle_name, e.last_name, e.mobile_phone, e.work_email,CONVERT(e.birthday, CHAR) as birthday, e.supervisor, cs.timezone from employees e inner join companystructures cs on cs.id=e.department where e.status = 'active'`
            db.query(query, function (err, rows) {
                if (rows === undefined) {
                    reject(wrap.error(`Query ${err}`));
                } else {
                    resolve(rows);
                }
            }
        )
    }
    )
}

const getSupervisorMail = (supervisorID) =>{
    return new Promise(function (resolve, reject) {
    let query = `Select id, first_name,middle_name,last_name,work_email as supervisorMail from employees where id IN (${supervisorID})`
    db.query(query, function (err, rows) {
        if (rows === undefined) {
            reject(wrap.error(`Query ${err}`));
        } else {
            resolve(rows);
        }
    }) 
})}

module.exports = {getEmployeeData,getSupervisorMail}
