#!/bin/bash

docker pull ubuntu

########
# Ubuntu
########
docker build -t zetdata/ubuntu:latest ubuntu/14.04/
docker build -t zetdata/ubuntu:14.04 ubuntu/14.04/
docker build -t zetdata/ubuntu:trusty ubuntu/14.04/

docker build -t zetdata/ubuntu:12.04 ubuntu/12.04.4/
docker build -t zetdata/ubuntu:precise ubuntu/12.04.4/

################################################
docker build -t zetdata/ubuntu:12.10 ubuntu/12.10/
docker build -t zetdata/ubuntu:quantal ubuntu/12.10/

docker build -t zetdata/ubuntu:13.04 ubuntu/13.04/
docker build -t zetdata/ubuntu:raring ubuntu/13.04/

docker build -t zetdata/ubuntu:13.10 ubuntu/13.10/
docker build -t zetdata/ubuntu:saucy ubuntu/13.10/

#########
# CDH
#########
docker build -t zetdata/cdh:latest cdh/4/
docker build -t zetdata/cdh:4 cdh/4/

########
# scientific python
########
docker build -t zetdata/sci-python:latest sci-python/2.7/
docker build -t zetdata/sci-python:2.7 sci-python/2.7/

# docker build -t zetdata/sci-python:3.3 sci-python/3.3/
