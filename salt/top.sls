base:
    '*':
    - nagiosconf
    - nagiosinstall
    - syslognginstall
    'minion1':
    - wordpressinstall
    - syslogngwordpressconf
    'minion2':
    - dockerinstall
    - syslogconf