# Webstack Monitoring Project

## Description
This project focuses on implementing monitoring solutions for a web stack, covering both application and server monitoring aspects. The aim is to utilize Datadog as the monitoring tool and set up various monitors and dashboards to track system metrics effectively.

## Background
Monitoring is essential in the tech industry to ensure optimal performance and identify potential issues proactively. By monitoring both application and server metrics, teams can gain insights into the health and performance of their systems.

## Learning Objectives
By the end of this project, you should be able to:
- Explain the importance of monitoring in the tech industry
- Identify the main areas of monitoring: application and server
- Understand the purpose of access logs and error logs in a web server (e.g., Nginx)
- Set up monitors for key system metrics using Datadog
- Create dashboards for visualizing various metrics

## Tasks Overview
1. **Sign up for Datadog and install datadog-agent**
   - Sign up for a Datadog account and install the agent on the designated server (web-01).
   - Create application key and ensure server visibility on Datadog.

2. **Monitor some metrics**
   - Set up monitors to track read and write requests issued to the device per second.

3. **Create a dashboard**
   - Design a dashboard with multiple widgets to visualize different metrics effectively.

## Requirements
- Ubuntu 16.04 LTS environment
- Bash scripts for automation tasks
- README.md file detailing project overview, tasks, and instructions
- Compliance with coding standards (e.g., Shellcheck)
- Usage of allowed editors (vi, vim, emacs)

## Project Structure
0x18-webstack_monitoring/
├── 0-sign_up_datadog
│ ├── 0-setup_datadog.sh
│ └── README.md
├── 1-monitor_some_metrics
│ ├── 0-monitor_nginx
│ │ ├── 0-setup_datadog.sh
│ │ └── README.md
│ └── 1-setup_datadog.sh
├── 2-create_a_dashboard
│ ├── 0-setup_datadog.sh
│ ├── 1-setup_datadog.sh
│ └── README.md
└── README.md


## Usage
1. Clone the GitHub repository: `git clone https://github.com/yourusername/alx-system_engineering-devops.git`
2. Navigate to the appropriate directory for each task.
3. Execute the Bash scripts to accomplish the respective tasks.
4. Refer to the README.md files in each directory for detailed instructions on execution and setup.

## Author
Yvonne Gichovi
