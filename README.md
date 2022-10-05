This is a template for creating the linux service.

## Steps
1. Fetch the repo
```shell
service={service-name} && git clone https://github.com/xh-dev/linux-service $service && cd $service
```
2. Modify the run.sh to execution script (Make sure the command not completed)
3. update variables
```shell
# pass service name with pipeline
echo "service-name" | ./init
```
4. start service
```shell
./startService
```

## Supporting commands
### Initialization
```shell
echo "{service-name}" | ./init
```
### Start service
```shell
./startService
```

### Stop service
```shell
./stopService
```

### Check service status
```shell
./serviceStatus
```

### Get service name
```shell
./getServiceName
```

### Update service description
```shell
echo "description of service" | ./updateDescription
```

### Update service name
```shell
echo "{new service name}" | ./updateServiceName
```

## Example SSH Port forwarding
1. clone service
```shell
service=abc-service && git clone https://github.com/xh-dev/linux-service $service && cd $service
```

2. append the script to run.sh, make sure the -f option (run in backgroup) not passed to the command
```shell
echo "ssh -N -R {remote-host}:{remote-port}:{local-host}:{local-port} {user}@{ssh-server}" >> run.sh
```
3. update variables
```shell
# pass service name with pipeline
echo abc-service | ./init
```
4. start service
```shell
./startService
```
