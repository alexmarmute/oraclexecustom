#!/bin/bash

docker build -t marmute/oracledb:xe --squash .

docker run -d --shm-size=1g -p 49161:1521 -p 8080:8080 -e ORACLE_ENABLE_XDB=true marmute/oracledb:xe
