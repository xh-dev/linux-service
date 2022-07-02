This is a template for creating the linux service.

## Steps
1. Fetch the repo
```shell
service={service-name} && git clone https://github.com/xh-dev/linux-service $service && cd $service
```
2. Modify the run.sh to execution script
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
Get the service name
```shell
./getServiceName
```

Update service description
```shell
echo "description of service" | ./updateDescription
```
