### Syslog Loging 

- Facilities: kern, user, mail, daemon, auth, local0, local7
- Severities: emerg, alert, crit, err, warning, notice, info, debug 

### Logging with Logger

$ logger "Message"
$ logger -p local0.info "Message"
$ logger -t myscript -p local0.info "Message" --> tag the message
$ logger -i -t myscript "Message"
