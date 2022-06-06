# Udacity Cloud DevOps Engineer Nanodegree Project 2
My solution for the second nanodegree project - Deploy a high-availability web app using CloudFormation.


It contains the following files:
1. CloudFormation template - `template.yml`
2. Paramaters file - `params.json`
3. Architecture Diagram - `Project2.jpeg`
4. .sh scripts - `create.sh`, `create-inline-params.sh`

<br/>

## What's Needed

### 1. AWS
You would need to have an AWS account (a free tier works, but please take note of resources that are not free/eligible for free tier e.g NAT gateways, unattached EIPs, etc.)

- Install AWS CLI

The following will also help:
- AWS documentation on [CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html), [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

- [AWS Knowledge Center](https://aws.amazon.com/premiumsupport/knowledge-center/)

- [AWS CLI Command Reference](https://awscli.amazonaws.com/v2/documentation/api/latest/index.html)

- [AWS Free Tier](https://aws.amazon.com/free/?all-free-tier&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)


<br/>

## How to run
You can use either the `create.sh` or `create-inline-params.sh` file:

### 1) `create-inline-params.sh` file (Preferred)

The `template.yml` file requires a `MyIp` parameter, which is supposed to allow access to your bastion host via terminal only from your IP address (which changes). <br/>
Hence, using this script will help get the IP address, instead of hardcoding into the `params.json` file.
```bash
# Ensure that the AWS CLI is configured before runniing the command below

#Ensure your AWS account/user has appropriate permissions to provision resources

# You can change the region in the file (already set to us-east-1)
# Change the AMI ID to match the AMI ID for your region
# Change key-pair name used for the bastion host
./create-inline-params.sh solutionStack template.yml
```

### 2) `create.sh` file

If you'd be trying to ssh into the bastion host, you can either:
- Add your correct current IP address to the `params.json` file, or
- Edit the `CidrIp` property in the security group for the bastion host to allow a range of IP addresses (or all IP addresses). <br/>

```bash
# Preceeding instructions same as above
./create.sh solutionStack template.yml params.json
```
<br/>

## Confirm Your Running App

1) On successful creation of the stack, grab the `Value` of `LoadBalancerURL` in the Outputs section or,
2) Go to your EC2 management console and under the Load Balancing section, go to Load Balancers, select the load balancer and grab the URL.

<br/>

## Miscellaneous
Will be updated to include additional resources suggestions (AWS parameter store, CloudWatch, etc).
