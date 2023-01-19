#!/usr/bin/env bash

set -e

aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin 793320899105.dkr.ecr.eu-west-2.amazonaws.com

docker pull 793320899105.dkr.ecr.eu-west-2.amazonaws.com/petclinic_repo:Latest