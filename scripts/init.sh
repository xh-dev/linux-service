SOURCE=$(dirname -- $0)
echo "Script directory: $SOURCE"
cd $SOURCE
echo "Current in: $(pwd)"
echo "======================"

[[ -f ".cfg" ]] && echo "config exists!" || (source ./updateServiceName && echo "service name set!")
echo "======================"

serviceName="$(cat .cfg)"
servicePath="/etc/systemd/system/$serviceName.service"
echo "Service setup to: $servicePath"

cp service.tmpl service

sed -i "s|{working-dir}|$(pwd)|g" service
sed -i "s|{exec}|$(pwd)/run.sh|g" service

# Fix bug in enabling service
# https://unix.stackexchange.com/questions/700687/sytemctl-failed-to-look-up-unit-file-state-invalid-argument
ln -f "$(pwd)/service" $servicePath

systemctl daemon-reload
systemctl enable $serviceName
systemctl status $serviceName
