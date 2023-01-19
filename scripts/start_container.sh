#!/usr/bin/env bash

set -e

docker run -d --name backend_deploy_please -p 9966:9966 793320899105.dkr.ecr.eu-west-2.amazonaws.com/petclinic_repo:Latest