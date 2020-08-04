
# CookieCutter Ruby

<a href="https://lamby.custominktech.com"><img src="https://user-images.githubusercontent.com/2381/59363668-89edeb80-8d03-11e9-9985-2ce14361b7e3.png" alt="Lamby: Simple Rails & AWS Lambda Integration using Rack." align="right" width="300" /></a>

A demo project to showcase using aws sam cookiecutter project templates to kickstart your lambda projects. [See the full article here on Custom Ink's technology blog](https://dev.to/metaskills/using-aws-sam-cookiecutter-project-templates-37le).

**[Lamby: Simple Rails & AWS Lambda Integration using Rack.](https://lamby.custominktech.com)**

## Usage

If you already have [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html) installed, run this command.

```shell
$ sam init --location "gh:customink/cookiecutter-ruby"
```

If you want to avoid installing SAM CLI alltogether, you can use this Docker command.

```shell
$ docker run \
  --interactive \
  --volume "${PWD}:/var/task:delegated" \
  lambci/lambda:build-ruby2.7 \
  sam init --location "gh:customink/cookiecutter-ruby"
```
