const express = require('express')
const app = express()
const nodemailer = require('nodemailer');
const hbs = require('nodemailer-express-handlebars')
const wrap = require('./../helpers/logger')

require('dotenv').config()

app.use(express.static('images'))

var transporter = nodemailer.createTransport({
  host: 'smtp.sendgrid.net',
  port: 587,
  auth: {
    user: process.env.EMAILUSER,
    pass: process.env.EMAILPASSWORD
  }
});

transporter.use('compile', hbs({
  viewEngine: {
    extname: '.hbs',
    layoutsDir: 'email_template/',
    defaultLayout: false,
    partialsDir: 'email_template/',
  },
  viewPath: 'email_template/',
  extName: '.hbs'
}));

const sendBirthdayEmailToSupervisor = (supervisorName, supervisorMail, data) => {

  const mailOptions = {
    from: 'HiHelloHr Admin noreply@hihellohr.com',
    to: supervisorMail,
    subject: 'Birthday reminders',
    template: 'supervisorEmail',
    context: {
      name: supervisorName,
      birthday: data,
    },
    attachments: [{
      filename: 'happy-birthday-banner.jpg',
      path: './images/happy-birthday-flags.jpg',
      cid: 'image'
    }]
  }

  sendEmail(mailOptions)
}

const sendLeaveEmailToSupervisor = (supervisorName, supervisorMail, data) => {
  const mailOptions = {
    from: "HiHelloHr Notification noreply@hihellohr.com",
    to: supervisorMail,
    subject: "Upcoming Leaves Reminder",
    template: "leaveEmail",
    context: {
      name: supervisorName,
      data: data,
    },
  };

  sendEmail(mailOptions);
};

const sendEmail = (mailOptions) => {
  transporter.sendMail(mailOptions, function (error, info) {
    if (error) {
      wrap.error("Email error: " + error.message);
    } else {
      wrap.info('Email sent: ' + info.response);
    }
  });
}



module.exports = {sendBirthdayEmailToSupervisor,sendLeaveEmailToSupervisor}