#!/bin/bash

OLD_STACKS=$(aws cloudformation describe-stacks | jq '.Stacks[] | select(.StackName!="InitialStack" and .Parameters[].ParameterValue!="${CIRCLE_WORKFLOW_ID:0:7}").Parameters[].ParameterValue' | uniq)

for stack in $OLD_STACKS
do  
    echo "Deleting stack with the id: ${stack}"
    S3_BUCKET="s3://udapeople-$OldWorkflowID"
    if aws s3 ls $S3_BUCKET 2>&1 | grep -q 'An error occurred'
    then
        echo "bucket does not exist."
    else
        aws s3 rm $S3_BUCKET --recursive
    fi
    aws cloudformation delete-stack --stack-name udapeople-frontend-${OldWorkflowID}
    aws cloudformation delete-stack --stack-name udapeople-backend-${OldWorkflowID}
done