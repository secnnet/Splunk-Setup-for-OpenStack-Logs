# Splunk Setup for OpenStack Logs

This script automates the installation and configuration of Splunk for ingesting OpenStack logs. Splunk is a powerful tool used for debugging and monitoring OpenStack configurations.

## Prerequisites

- This script should be run with root privileges.
- Internet connectivity is required to download the Splunk package.

## Installation

1. Clone or download the script to your desired location.
2. Open a terminal and navigate to the directory containing the script.
3. Make the script executable by running the following command:

`chmod +x splunk_setup.sh`

4. Run the script using the following command:

`sudo ./splunk_setup.sh`

## Usage

1. Execute the script with root privileges as described in the Installation section.
2. The script will download the Splunk package, extract it, and configure log file monitoring for OpenStack services.
3. Splunk will be automatically started and enabled to start on boot.

## Accessing Splunk

After the script completes successfully, you can access Splunk using the following URL:

`http://<SG_SERVICE_CONTROLLER_IP>:8000/`

Replace `<SG_SERVICE_CONTROLLER_IP>` with the IP address of your OpenStack service controller.

## Next Steps

Once the Splunk setup is complete, you can continue the OpenStack setup by running the `openstack_mysql.sh` script.

## Troubleshooting

- If you encounter any errors during the script execution, make sure you are running the script with root privileges.
- Check your internet connection to ensure the script can download the Splunk package.
- Verify that the `<SG_SERVICE_CONTROLLER_IP>` provided in the URL is correct and accessible.

## License

This script is provided under the [MIT License](LICENSE).
