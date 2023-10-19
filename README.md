# Splunk Setup for OpenStack Logs

Script to automate Splunk setup for OpenStack logs.

### Prerequisites:
- Run as root.
- Internet connectivity.

### Installation:
1. Clone/download the script.
2. Navigate to script directory.
3. `chmod +x splunk_setup.sh`
4. `sudo ./splunk_setup.sh`

### Usage:
1. Run the script with root privileges.
2. Splunk starts automatically on boot.

### Access Splunk:
Visit `http://<SG_SERVICE_CONTROLLER_IP>:8000/`

Replace `<SG_SERVICE_CONTROLLER_IP>` with your OpenStack service controller IP.

### Next Steps:
Run `openstack_mysql.sh` for OpenStack setup.

### Troubleshooting:
- Ensure script runs as root.
- Check internet connection.
- Verify `<SG_SERVICE_CONTROLLER_IP>` is correct and accessible.

### License:
MIT
