
# {% include "_cctmp/class_name.txt" %}

<a href="https://lamby.custominktech.com"><img src="https://user-images.githubusercontent.com/2381/59363668-89edeb80-8d03-11e9-9985-2ce14361b7e3.png" alt="Lamby: Simple Rails & AWS Lambda Integration using Rack." align="right" width="300" /></a>

Welcome to your new Lambda project! This was created by Custom Ink's demo AWS SAM Cookiecutter project template for Ruby. [See the full article here on Custom Ink's technology blog](https://technology.customink.com/blog/2020/03/13/using-aws-sam-cookiecutter-project-templates-to-kickstart-your-ambda-projects/).

**[Lamby: Simple Rails & AWS Lambda Integration using Rack.](https://lamby.custominktech.com)**

## Setup

Follow these steps to get started:

```shell
$ ./bin/bootstrap
$ ./bin/setup
$ ./bin/test
```

To deploy your Lambda do the following. This command assumes you have the AWS CLI configured with credentials located within your `~/.aws` directory.

```shell
$ STAGE_ENV=production ./bin/deploy
```

To test it works within the AWS Console, you can either send it a test event (Services -> Lambda -> MYLAMBDA -> Test) or if you opted for a basic HTTP API, you can see your Invoke URL by navigating to (Services -> API Gateway -> MYAPI -> Invoke URL) page.

## CI/CD with GitHub Actions

In order for GitHub to deploy your Lambda, it will need permission to do so. An admin should do the first deploy, however afterward GitHub Actions can do updates for you.

#### Create a Deploy User

In the AWS Console -> IAM -> Users -> Add User.

* Check "Programmatic access" option.
* Select "Attach existing policies directly" option.
* Select "AWSLambdaFullAccess" policy.
* Copy the "Access key ID" and "Secret access key"

#### AWS Credentials

In your GitHub repo page. Click Settings -> Secrets -> Add a new secret

* Name `AWS_ACCESS_KEY_ID` value (from step above)
* Name `AWS_SECRET_ACCESS_KEY` value (from step above)
