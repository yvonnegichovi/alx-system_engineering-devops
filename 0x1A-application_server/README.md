# 0x1A. Application Server

## Table of Contents

- [Background Context](#background-context)
- [Resources](#resources)
- [Requirements](#requirements)
- [Tasks](#tasks)
  - [0. Set up development with Python](#0-set-up-development-with-python)
  - [1. Set up production with Gunicorn](#1-set-up-production-with-gunicorn)
  - [2. Serve a page with Nginx](#2-serve-a-page-with-nginx)
  - [3. Add a route with query parameters](#3-add-a-route-with-query-parameters)
  - [4. Let's do this for your API](#4-lets-do-this-for-your-api)
  - [5. Serve your AirBnB clone](#5-serve-your-airbnb-clone)
  - [6. Deploy it!](#6-deploy-it)
  - [7. No service interruption](#7-no-service-interruption)

---

## Background Context

Your web infrastructure is already serving web pages via Nginx that you installed in your first web stack project. While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it into your Nginx, and make it serve your Airbnb clone project.

## Resources

- [Application server vs web server](https://www.nginx.com/resources/glossary/application-server-vs-web-server/)
- [How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-16-04)
- [Running Gunicorn](https://docs.gunicorn.org/en/stable/run.html)
- [Upstart documentation](http://upstart.ubuntu.com/cookbook/)

## Requirements

### General

- A `README.md` file, at the root of the folder of the project, is mandatory
- Everything Python-related must be done using python3
- All config files must have comments

### Bash Scripts

- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck without any error
- The first line of all your Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all your Bash scripts should be a comment explaining what the script is doing

## Tasks

### 0. Set up development with Python

Let’s serve what you built for AirBnB clone v2 - Web framework on `web-01`. This task is an exercise in setting up your development environment, which is used for testing and debugging your code before deploying it to production.

- Make sure that task #3 of your SSH project is completed for `web-01`
- Install the `net-tools` package on your server: `sudo apt install -y net-tools`
- Git clone your `AirBnB_clone_v2` on your `web-01` server.
- Configure the file `web_flask/0-hello_route.py` to serve its content from the route `/airbnb-onepage/` on port `5000`.
- Your Flask application object must be named `app`.

Example:

### 1. Set up production with Gunicorn

Now that you have your development environment set up, let’s get your production application server set up with Gunicorn on `web-01`, port `5000`.

- Install Gunicorn and any other libraries required by your application.
- The Flask application object should be called `app`.
- You will serve the same content from the same route as in the previous task.

### 2. Serve a page with Nginx

Building on your work in the previous tasks, configure Nginx to serve your page from the route `/airbnb-onepage/`.

- Nginx must serve this page both locally and on its public IP on port `80`.
- Nginx should proxy requests to the process listening on port `5000`.

### 3. Add a route with query parameters

Building on what you did in the previous tasks, let’s expand our web application by adding another service for Gunicorn to handle. 

- Nginx must serve this page both locally and on its public IP on port `80`.
- Nginx should proxy requests to the route `/airbnb-dynamic/number_odd_or_even/(any integer)` to the process listening on port `5001`.

### 4. Let's do this for your API

Let’s serve what you built for AirBnB clone v3 - RESTful API on `web-01`.

- Git clone your `AirBnB_clone_v3`.
- Setup Nginx so that the route `/api/` points to a Gunicorn instance listening on port `5002`.
- Nginx must serve this page both locally and on its public IP on port `80`.

### 5. Serve your AirBnB clone

Let’s serve what you built for AirBnB clone - Web dynamic on `web-01`.

- Git clone your `AirBnB_clone_v4`.
- Your Gunicorn instance should serve content from `web_dynamic/2-hbnb.py` on port `5003`.
- Setup Nginx so that the route `/` points to your Gunicorn instance.

### 6. Deploy it!

Once you’ve got your application server configured, you want to set it up to run by default when Linux is booted. 

- Write a systemd script which starts a Gunicorn process to serve the same content as the previous task.
- The Gunicorn process should spawn 3 worker processes.
- The process should log errors in `/tmp/airbnb-error.log`.
