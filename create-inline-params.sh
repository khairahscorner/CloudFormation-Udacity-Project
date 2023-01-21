#old
# aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters ParameterKey=InstanceType,ParameterValue=t3.medium ParameterKey=LaunchConfigAMI,ParameterValue=ami-09d56f8956ab235b3 ParameterKey=MyIp,ParameterValue=$(curl -s http://checkip.amazonaws.com/)/32 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1

#with launch template
aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters ParameterKey=InstanceType,ParameterValue=t3.medium ParameterKey=LaunchTemplateAMI,ParameterValue=ami-0778521d914d23bc1 ParameterKey=MyIp,ParameterValue=$(curl -s http://checkip.amazonaws.com/)/32 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1
