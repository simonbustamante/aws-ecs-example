#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
CLUSTER_NAME="fargate-cluster-test"
SERVICE_NAME="fargate-service-test"

echo "DELETE CLUSTER"
aws ecs delete-service --cluster $CLUSTER_NAME --service $SERVICE_NAME --profile $PROFILE --force
