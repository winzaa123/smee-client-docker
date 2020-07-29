module.exports = {
    autorestart: true,
    log_date_format  : "YYYY-MM-DD HH:mm:ss",
    name: "app",
    script:  `smee -u $SMEE_URL -t  $JENKINS_TARGET`
}

