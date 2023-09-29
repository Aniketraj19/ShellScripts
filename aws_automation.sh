#!/bin/bash
function print_red()
{
    echo -e "\e[31m$1\e[0m"
}

date > /home/arv/resources.txt

#list s3 buckets
print_red "Printing S3 buckets" >> /home/arv/resources.txt
aws s3 ls >> /home/arv/resources.txt

print_red "Printing the instance id present in the aws" >> /home/arv/resources.txt
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId' >> /home/arv/resources.txt

#printing all the IAM user list
print_red "Printing all the IAM users" >> /home/arv/resources.txt
echo "The IAM users are: " >> /home/arv/resources.txt
aws iam list-users | grep -i UserName | awk '{print $2}' >> /home/arv/resources.txt

echo "This is just for checking"


