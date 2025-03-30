# Upload files to AWS S3

#### Install AWS cli

```
// Some code
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg ./AWSCLIV2.pkg -target / which aws aws --version

export AWS_ACCESS_KEY_ID="accesskey"
export AWS_SECRET_ACCESS_KEY="secretaccesskey" 
aws s3 cp file.zip s3://unhcr-mvp-test-data/
```
