### Web Stack Debugging #0

This project focuses on debugging a web stack using Docker and basic troubleshooting techniques. The goal is to ensure that Apache runs on a Docker container and returns a page containing "Hello Holberton" when queried at its root.

#### Background Context

Web stack debugging is an essential skill for Full-Stack Software Engineers. In this project, we are given a Docker container running Apache. The task is to fix any issues preventing Apache from serving the desired page.

#### Example

```bash
$ docker run -p 8080:80 -d -it holbertonschool/265-0
$ docker ps
$ curl 0:8080
```

Here, we observe that querying port 8080 returns an error message instead of the expected page. The goal is to fix this issue so that querying port 8080 returns the "Hello Holberton" page.

#### Tasks

**0. Give me a page!**
- Ensure Apache runs on the Docker container.
- Make Apache return a page containing "Hello Holberton" when queried at the root.

#### Requirements

- All files are interpreted on Ubuntu 14.04 LTS.
- Files end with a new line.
- README.md file is mandatory.
- All Bash script files must be executable.
- Bash scripts must pass Shellcheck without any error.
- Bash scripts must run without error.
- Bash scripts must start with `#!/usr/bin/env bash`.
- The second line of each Bash script should be a comment explaining its purpose.

#### Resources

- `curl` command.
- Docker concepts.

#### Repository Information

- GitHub repository: [alx-system_engineering-devops](https://github.com/username/alx-system_engineering-devops)
- Directory: 0x0D-web_stack_debugging_0
- File: 0-give_me_a_page

#### Author

- Sylvain Kalache, co-founder at Holberton School

#### Project Weight

- 1

#### Deadline

- Project started on: Feb 26, 2024 6:00 AM
- Project must end by: Feb 29, 2024 6:00 AM

#### Auto QA Review

- Mandatory: 0.0%
- Optional: No optional tasks

#### Concepts

- Network basics
- Docker
- Web stack debugging
