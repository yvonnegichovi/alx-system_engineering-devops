ll
This project covers topics related to firewall configuration, including port blocking, port forwarding, and network security. It involves tasks focused on setting up and configuring the ufw (Uncomplicated Firewall) on specified servers.

Table of Contents
Description
Concepts
Background Context
Resources
Tasks
Description
This project aims to provide hands-on experience with firewall setup and configuration. It involves configuring the ufw firewall to block all incoming traffic except for specific TCP ports (22, 443, 80) on the web-01 server. Additionally, it covers the setup of port forwarding on the web-01 server to redirect traffic from port 8080 to port 80.

Concepts
The key concept covered in this project is Web stack debugging.

Background Context
The project emphasizes the importance of firewall configuration for network security. It provides guidance on setting up and testing firewall rules using tools like telnet to verify port accessibility.

Resources
Students are encouraged to read or watch the following resources:

What is a firewall
Web stack debugging guide concept page
Additional resources provided within the project's context
Tasks
Block all incoming traffic but

Configure ufw on web-01 to block all incoming traffic except for SSH (port 22), HTTPS SSL (port 443), and HTTP (port 80).
Provide the ufw commands used for the configuration.
Port forwarding (Advanced)

Configure web-01 to forward traffic from port 8080/TCP to port 80/TCP.
Provide the ufw configuration file modified to implement the port forwarding.
