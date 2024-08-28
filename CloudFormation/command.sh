
aws cloudformation validate-template --template-body file://launch-template-stack.yaml

aws cloudformation create-stack --stack-name MyLaunchTemplateStack --template-body file://launch-template-stack.yaml --capabilities CAPABILITY_NAMED_IAM

aws cloudformation create-stack --stack-name MyLaunchTemplateStack --template-body file://CD2401FirstTemplate.yaml --capabilities CAPABILITY_NAMED_IAM

aws cloudformation create-stack\
    --stack-name MyLaunchTemplateStack\
    --template-body file://launch-template-stack.yaml\
    --parameters file://param.json\
    --capabilities CAPABILITY_NAMED_IAM

aws cloudformation update-stack --stack-name MyLaunchTemplateStack --template-body file://launch-template-stack.yaml --capabilities CAPABILITY_NAMED_IAM


aws cloudformation describe-stacks --stack-name MyLaunchTemplateStack



# Create a bucket
aws s3 mb s3://cd2401-8888 --region us-east-1

aws s3 mb s3://cd2401-8888 \
    --region us-east-1

aws s3 cp index.html s3://cd2401-8888/index.html

aws s3 ls s3://cd2401-8888

aws s3 mv index.html s3://cd2401-8888/Test/index.html