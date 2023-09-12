# Oepn Interpreter on Docker

Open Interpreter environment on Docker

## Setup

clone this repository

```sh
$ cd && git clone https://github.com/torun225/open-interpreter-on-docker.git
```

## Start & Attach Container

```sh
$ cd ~/open-interpreter-docker
$ docker-compose up -d
$ docker exec -it open-interpreter bash
```

## Run open-interpreter

```sh
root@container_id:~$ interpreter
```

## How to use open-interpreter

https://github.com/KillianLucas/open-interpreter/

## How to view GUI apps on Host OS

Install VcXsrv and start with default settings.
