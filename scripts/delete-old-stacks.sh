#!/bin/bash

OLD_STACKS=$(aws cloudformation describe-stacks | jq -r '.Stacks[] | select(.StackName!="InitialStack" and .Parameters[].ParameterValue!="${CIRCLE_WORKFLOW_ID:0:7}").Parameters[].ParameterValue' | uniq)
CURRENT_STACK_ID="${CIRCLE_WORKFLOW_ID:0:7}"

echo "old stack[s]: ${OLD_STACKS}"
echo "current stack: ${CURRENT_STACK_ID}"

for stackId in $OLD_STACKS
do
    if [$stackId != $CURRENT_STACK_ID];
    then
        echo "Deleting stack with the id: ${stackId}"
        S3_BUCKET="s3://udapeople-$stackId"
        if aws s3 ls $S3_BUCKET 2>&1 | grep -q 'An error occurred'
        then
            echo "bucket with id $stackId does not exist."
        else
            aws s3 rm $S3_BUCKET --recursive
        fi

        aws cloudformation delete-stack --stack-name udapeople-frontend-${stackId}
        aws cloudformation delete-stack --stack-name udapeople-backend-${stackId}
    fi
done