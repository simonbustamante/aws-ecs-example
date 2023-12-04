#!/bin/bash
PROFILE="507964037226_AWSAdministratorAccess"
JSON_FILE="task-definition.json"
aws ecs register-task-definition --cli-input-json file://$JSON_FILE --profile $PROFILE