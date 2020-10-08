# Learning by Doing | Ansible Introduction

## Introduction
In this section we will try to understand high level flow of Ansible using shell script

## References
Not Required

## Assignment

- Create a Shell Script which will take inventory file and Task file as a input and perform tasks mention in Task file

Inventory file Example
```
webserver1,ubuntu,10.0.0.1
webserver2,ubuntu,10.0.0.2
appserver1,ubuntu,10.0.0.3
appserver2,ubuntu,10.0.0.4
dbserver,ubuntu,10.0.0.5
```

- Create AnsibleSimulator utility which will take inventory file and Bellow mention Task file as input

NginxTaskfile
```
webserver1,install,nginx
webserver2,install,nginx
webserver1,copy,/tmp/opstree.com,/etc/nginx/site-available/opstree.conf
webserver2,copy,/tmp/opstree.com,/etc/nginx/site-available/opstree.conf
webserver1,service,nginx,restart
webserver2,service,nginx,restart
```

- Update AnsibleSimulator utility which will take inventory file and Bellow mentions Task file as input

TomcatTaskfile
```
appserver1,download,https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz,/tmp/
appserver1,directory,/opt/tomcat/
appserver1,extract,/tmp/apache-tomcat-8.5.51.tar.gz,/opt/tomcat/
appserver1,user,tomcat
appserver1,group,tomcat
appserver1,copy,/tmp/tomcat.service,/etc/systemd/system/tomcat.service
appserver1,service,daemon-reload
appserver1,service,start
appserver1,deploy,sorucepath/*.war,/opt/tomcat/webapps/
appserver1,service,restart
appserver2,download,https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.51/bin/apache-tomcat-8.5.51.tar.gz,/tmp/
appserver1,directory,/opt/tomcat/
appserver2,extract,apache-tom  cat-8.5.51.tar.gz,/opt/tomcat/
appserver2,user,tomcat
appserver2,group,tomcat
appserver2,copy,/tmp/tomcat.service,/etc/systemd/system/tomcat.service
appserver2,service,daemon-reload
appserver2,service,start
appserver2,deploy,sorucepath/*.war,/opt/tomcat/webapps/
appserver2,service,restart
```

- Update AnsibleSimulator utility which will Take Inventory file and Bellow mentions Tasks file as input

MysqlTaskfile
```
dbserver,install,mysql
dbserver,database,employeedb
dbserver,user,spring3hibernate
```