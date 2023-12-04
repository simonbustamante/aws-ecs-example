#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
NAME="fargate-cluster-test"
aws ecs create-cluster --cluster-name $NAME --profile $PROFILE