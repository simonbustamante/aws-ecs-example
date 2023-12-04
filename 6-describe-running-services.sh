#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
CLUSTER_NAME="fargate-cluster-test"
SERVICE_NAME="fargate-service-test"
 
aws ecs describe-services --cluster $CLUSTER_NAME --services $SERVICE_NAME --profile $PROFILE