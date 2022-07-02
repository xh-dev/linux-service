#!/bin/bash
basePath="$(dirname -- $0)"
cd $basePath
basePath="$(pwd)"
serviceName="$(cat .cfg)"
systemctl start $serviceName
systemctl status $serviceName
