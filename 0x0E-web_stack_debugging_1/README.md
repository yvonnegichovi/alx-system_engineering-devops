0x0E. Web stack debugging #1
Overview
This project focuses on debugging issues related to web stack components, particularly Nginx, on an Ubuntu server. It involves troubleshooting network and web stack-related problems using debugging techniques and resolving them by writing Bash scripts.

Network basics
Web stack debugging
Requirements
Editors Allowed: vi, vim, emacs
Interpreted On: Ubuntu 20.04 LTS
File Endings: All files should end with a new line
README.md: A README.md file at the root of the project folder is mandatory
Executable Scripts: All Bash script files must be executable
Shellcheck: Bash scripts must pass Shellcheck without any error
Error-Free Execution: Bash scripts must run without error
Script Header: The first line of all Bash scripts should be #!/usr/bin/env bash
Script Comments: The second line of all Bash scripts should be a comment explaining what the script is doing
No wget: Use of wget is prohibited
Tasks
0. Nginx likes port 80
Score: 0.0% (Checks completed: 0.0%)

Debug an issue preventing Nginx installation on an Ubuntu container from listening on port 80. Write a Bash script to automate the fix, ensuring that Nginx is running and listening on port 80 of all server's active IPv4 IPs.

Requirements:

Nginx must be running and listening on port 80 of all the server’s active IPv4 IPs
Write a Bash script to configure the server to meet the above requirements
1. Make it sweet and short
Score: 0.0% (Checks completed: 0.0%)

Building upon task #0, create a concise Bash script with five lines or less to address the issue. Ensure that the service (init) accurately reports that Nginx is not running.

Requirements:

Bash script must be five lines long or less
The service (init) must indicate that Nginx is not running
No use of ;, &&, or wget
Cannot execute the previous answer file
