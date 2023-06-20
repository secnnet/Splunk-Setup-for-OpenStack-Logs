#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "You need to be 'root' to run this script." 1>&2
   exit 1
fi

clear

echo "####################################################################################################"
echo "This script installs and configures Splunk for ingestion of OpenStack logs."
echo "Access Splunk from the following URL: http://$SG_SERVICE_CONTROLLER_IP:8000/"
echo "####################################################################################################"

# Download Splunk package
wget -O splunk-6.1.3-220630-Linux-x86_64.tgz 'http://15.126.241.150/splunk-6.1.3-220630-Linux-x86_64.tgz'

# Extract and move Splunk
tar xvfz splunk-6.1.3-220630-Linux-x86_64.tgz
mv splunk /opt/splunk
rm splunk-6.1.3-220630-Linux-x86_64.tgz

# Configure log file monitoring in inputs.conf
cat <<EOF >> /opt/splunk/etc/apps/launcher/default/inputs.conf
[monitor:///var/log/keystone]
disabled = false
followTail = 0
[monitor:///var/log/nova]
disabled = false
followTail = 0
[monitor:///var/log/glance]
disabled = false
followTail = 0
[monitor:///var/log/cinder]
disabled = false
followTail = 0
[monitor:///var/log/rabbit]
disabled = false
followTail = 0
[monitor:///var/log/mongodb]
disabled = false
followTail = 0
[monitor:///var/log/ceilometer]
disabled = false
followTail = 0
[monitor:///var/log/libvirt]
disabled = false
followTail = 0
EOF

# Auto-start Splunk on boot
/opt/splunk/bin/splunk enable boot-start --accept-license

# Start Splunk
/opt/splunk/bin/splunk start --accept-license

echo "##########################################################################################"
echo "Splunk setup complete. Continue the setup by running './openstack_mysql.sh'."
echo "##########################################################################################"
