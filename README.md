# Docker and MySQL DB

#### Table of Contents
1. [Folder Structure](#folder-structure)
2. [Docker](#docker)
3. [MySQL](#mysql-db)

## Folder Structure
```sh
Database
    │   docker-compose.yml       
    │   Dockerfile
    │   README.md
    │
    ├───admin-scripts
    │       build.sh
    │       clean-build.sh
    │       clean.sh
    │       restart.sh
    │       stop.sh
    │
    └───sql-scripts
            01-tables.sql
            02-data.sql
            99-perms.sql
```

## Docker
It is assumed you already have [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/) installed or have installed both with [Docker Desktop](https://www.docker.com/products/docker-desktop), and are familiar with how to use them. If you are not, please read the documentation for each tool before proceeding.

#### Commands
I have written some bash scripts to make it easier to run the docker commands. The following commands are run from the `./Database/admin-scripts` directory. If you are using powershell, you can run the scripts without needing the bash tag. i.e. `./build.sh` instead of `bash ./build.sh`

Start the container:
```bash
bash ./build.sh
```

Stop the container:
```bash
bash ./stop.sh
```

Restart the container:
```bash
bash ./restart.sh
```

**CAUTION: The following scripts will nuke ALL docker containers and project related images/volumes.**
```bash
bash ./clean.sh
```

Resets docker project and rebuilds it:
```bash
bash ./clean-build.sh
```

## MYSQL DB
The database is started by the [Docker](#docker) commands and is seeded from `./Database/sql-scripts`. The files are run in descending order, with numbers at the beginning of the files denoting the run order. Ensure that any additional sql files are named in the correct order. i.e. don't have your data files run before your table files.

If you do add new files, or modify the data in existing files, you will need to run the `clean-build.sh` script to reseed the database with the new data. However, if you make changes direct to the database with a tool like MySQL workbench, you do not have to reset the database. The database is persistent with [docker volumes](https://docs.docker.com/get-started/05_persisting_data/) and will retain any changes you make.

To access the database using MySQL workbench, use the following credentials when creating a new connection:
key      | value
| :---   | :---
username | root
password | root
hostname | 127.0.0.1
port     | 3307



