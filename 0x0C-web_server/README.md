0x0C. Web server
DevOps
SysAdmin

# Web Server Configuration Project

This project focuses on configuring a web server using Nginx on Ubuntu 16.04 LTS. It includes scripts to automate the setup process and ensure compliance with specified requirements.

## Table of Contents

- [Project Description](#project-description)
- [Project Structure](#project-structure)
- [Requirements](#requirements)
- [Scripts](#scripts)
- [Usage](#usage)
- [Author](#author)

## Project Description

The project aims to set up a web server environment using Nginx on Ubuntu 16.04 LTS. It involves configuring Nginx to serve web pages, handling redirection, custom error pages, and DNS setup.

## Project Structure

- **0x0C-web_server/**
  - **0-transfer_file**: Bash script to transfer files from client to server using `scp`.
  - **1-install_nginx_web_server**: Bash script to install and configure Nginx on the server.
  - **2-setup_a_domain_name**: Bash script to configure a domain name and DNS records.
  - **3-redirection**: Bash script to configure redirection on the Nginx server.
  - **4-not_found_page_404**: Bash script to configure a custom 404 page on the Nginx server.
  - **README.md**: Project documentation.

## Requirements

- Allowed editors: vi, vim, emacs
- All files are interpreted on Ubuntu 16.04 LTS
- All files end with a new line
- Bash script files must be executable
- Bash scripts must pass Shellcheck (version 0.3.7) without any error
- The first line of Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of Bash scripts should be a c

