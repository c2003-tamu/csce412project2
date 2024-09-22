# CSCE 412 Project 2
Supporting files for CSCE 412 Project 2

## ec2/start.sh
Starts up a new ec2 instance using AWS CLI

## ec2/stop.sh
Stops a given ec2 instance using -i flag as follows:

./stop.sh -i <instanceid>

## ec2/status.sh
Gets ip address and id of all running ec2 instances

## init.sh
Installs all dependencies on an ec2 instance to get it ready for docker-compose spin up

## dockerup.sh
Uses docker-compose to start 5 nginx docker containers, each of which are given a different web page to display on a different port

## dockerdown.sh
Takes down the 5 afformentioned ngnix docker containers
