#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
CLUSTER_NAME="fargate-cluster-test"
SERVICE_NAME="fargate-service-test"

echo "LIST TASK"
output=$(aws ecs list-tasks --cluster $CLUSTER_NAME --service $SERVICE_NAME --profile $PROFILE)

# Extraer el ARN usando jq y asignarlo a una variable
taskArn=$(echo $output | jq -r '.taskArns[0]')

echo "DESCRIBE TASK"
output2=(aws ecs describe-tasks --cluster $CLUSTER_NAME --task $taskArn --profile $PROFILE)

# Extraer el Network Interface ID (ENI) usando jq y asignarlo a una variable
networkInterfaceId=$(echo $output2 | jq -r '.tasks[0].attachments[0].details[] | select(.name=="networkInterfaceId") | .value')

echo "DESCRIBE ENI Network Interfaces"
aws ec2 describe-network-interfaces \
    --network-interface-id  eni-037c63bd22b178ff7 \
    --profile $PROFILE


# echo "testing using private subnet"
aws ecs execute-command --cluster fargate-cluster-test \
      --task  $taskArn  \
      --container  fargate-app \
      --interactive \
      --command "/bin/sh" \
      --profile $PROFILE    

# aws ecs execute-command --cluster fargate-cluster-test \
#       --task  arn:aws:ecs:us-east-1:507964037226:task/fargate-cluster-test/aea89a01eae84154a579c64ef78bc5a3  \
#       --container  fargate-app \
#       --interactive \
#       --command "/bin/sh"