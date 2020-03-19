FROM lambci/lambda:build-ruby2.7

# Lock down AWS SAM version.
RUN pip install awscli && \
    pip uninstall --yes aws-sam-cli && \
    pip install aws-sam-cli==0.45.0

WORKDIR /var/task
