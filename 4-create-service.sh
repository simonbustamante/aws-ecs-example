#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
CLUSTER_NAME="fargate-cluster-test"
SERVICE_NAME="fargate-service-test"
TASK_DEFINITION_NAME="sample-fargate"
SUBNET="subnet-00ad66ef748f17161"
SECURITY_GROUP="sg-04b4b4aa2fda6a85b"
VERSION="6"


# aws ecs create-service \
#     --cluster $CLUSTER_NAME \
#     --service-name $SERVICE_NAME \
#     --task-definition $TASK_DEFINITION_NAME:3 \
#     --desired-count 1 \
#     --launch-type "FARGATE" \
#     --network-configuration "awsvpcConfiguration={subnets=[$SUBNET],securityGroups=[$SECURITY_GROUP]}" \
#     --enable-execute-command \
#     --profile $PROFILE

# USING PUBLIC SUBNET
aws ecs create-service \
    --cluster $CLUSTER_NAME \
    --service-name $SERVICE_NAME \
    --task-definition $TASK_DEFINITION_NAME:$VERSION \
    --desired-count 1 \
    --launch-type "FARGATE" \
    --network-configuration "awsvpcConfiguration={subnets=[$SUBNET],securityGroups=[$SECURITY_GROUP],assignPublicIp=ENABLED}" \
    --profile $PROFILE