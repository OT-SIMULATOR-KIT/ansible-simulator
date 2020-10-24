# Learning by Doing | Ansible Introduction

## Introduction
In this section we will try to understand high level flow of Ansible using shell script

## References
Not Required

## Assignments

Must Do
- Create a Jenkins pipelines which will take inventory file and Task file as a input and perform tasks mention in Task file

Inventory file Example
```
webserver1,ubuntu,10.0.0.1
webserver2,ubuntu,10.0.0.2
appserver1,ubuntu,10.0.0.3
appserver2,ubuntu,10.0.0.4
dbserver,ubuntu,10.0.0.5
```

- Jenkins Pipeline which will take inventory file and Bellow mention Task file as input

NginxTaskfile
```
webserver1,install,nginx
webserver2,install,nginx
webserver1,copy,/tmp/opstree.com,/etc/nginx/site-available/opstree.conf
webserver2,copy,/tmp/opstree.com,/etc/nginx/site-available/opstree.conf
webserver1,service,nginx,restart
webserver2,service,nginx,restart
```

- Update Jenkins Pipeline which will take inventory file and Bellow mentions Task file as input

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

- Update Jenkins Pipeline which will Take Inventory file and Bellow mentions Tasks file as input

MysqlTaskfile
dbserver,install,mysql
dbserver,database,employeedb
dbserver,user,spring3hibernate

Good To Do

- Create a utility to manage users. It should cover below functionalities:-
    - User creation
    - User deletion
    - User modification


- Update the utility to manage groups. It should cover below functionalities:-
    - Group creation
    - Group deletion
    - Group modification


- Update the utility to manage files. It should cover below functionalities:-
    - File creation, modification, deletion
    - Directory creation, modification, deletion
    - Copy file from one location to another


- Update the utility to manage file templating. It should cover below functionalities:-
    - It should allow user to copy file with dynamic content to remote server


- Update the utility to manage packages. It should cover below functionalities:-
    - Package installation, upgradation, uninstallation
    - Repository update
    - It should support RedHat and Debian family OS.


- Update the utility to manage services. It should cover below functionalities:-
    - Service start, restart, stop
    - Systemd daemon reload


- Update the utility to include multiple executions or functions. For example:-
    - To install nginx and tomcat
    - There should be a different tomcat user to manage tomcat configuration
    - Nginx default HTML page should be

        ```Hi My name is $name_of_yours```
    - After any configuration change nginx service should be restarted


- Update the utility to execute above scripts on remote systems.
    - IP of remote system
    - SSH User for remote system
    - SSH Private key for remote system


- Update the utility to run on mulitple servers parallely.
    