module.exports = {
    autorestart: true,
    "log_date_format"  : "YYYY-MM-DD HH:mm:ss",
    "name": "app",
    "script":  `smee -u ${process.env.SMEE_URL} -t  ${process.env.JENKINS_TARGET}`
}

