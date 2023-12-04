#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
CLUSTER_NAME="fargate-cluster-test"

aws ecs list-services --cluster $CLUSTER_NAME --profile $PROFILE