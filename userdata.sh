#!/bin/bash

yum install ansible python3.12-pip.noarch -y &>>/opt/userdata.log
pip3.12 install botocore boto3 &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/krish596/roboshop-ansible.git main.yml -e component=rabbitmq &>>/opt/userdata.log
