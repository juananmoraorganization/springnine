## springnine

Conjunto de pruebas automáticas que realizan la validacuión e2e de la funcionalidad del servicio cttione

## Getting started

Start write your documentation by adding more markdown (.md) files to this folder (/docs) or replace the content in this file.

## Table of Contents

The Table of Contents on the right is generated automatically based on the hierarchy
of headings. Only use one H1 (`#` in Markdown) per file.

```mermaid
sequenceDiagram
  participant Client
  participant GreeterService
  Client->>+GreeterService: sayHello(HelloRequest)
  activate GreeterService
  GreeterService->>+GreeterService: Create reply message
  Note over GreeterService: Appends "Kaixo " to\nrequest.getName()
  GreeterService->>+responseObserver: onNext(HelloReply)
  responseObserver->>-GreeterService: acknowledgement
  GreeterService->>+responseObserver: onCompleted()
  responseObserver->>-GreeterService: acknowledgement
  GreeterService->>-Client: Return HelloReply
  deactivate GreeterService

```

## Pipeline

For new pages to appear in the left hand navigation you need edit the `mkdocs.yml`
file in root of your repo. The navigation can also link out to other sites.

```mermaid
  sequenceDiagram
  participant GitHub
  participant Jenkins
  participant Maven
  participant Nexus
  participant Docker
  participant Kubernetes1
  participant Kubernetes2
  participant Kubernetes3
  participant Registry
  participant Slack
  participant Postman1

  GitHub->>+Jenkins: Notify of new commit
  Jenkins->>+GitHub: Checkout source code
  Jenkins->>+Maven: Compile code
  Maven-->>-Jenkins: Compile successfully
  Jenkins->>+Nexus: Upload jar to Maven releases
  Nexus-->>-Jenkins: Jar uploaded successfully
  Jenkins->>+Docker: Build Docker image
  Docker->>+Registry: Push Docker image
  Jenkins->>+Kubernetes1: Deploy to staging
  Kubernetes1->>-Jenkins: Deployment successful
  Jenkins->>+Postman1: Send API requests for validation
  Postman1-->>-Jenkins: Validation successful
  Jenkins->>+Slack: Notify of successful deployment and validation to staging
  Slack-->>-Jenkins: Acknowledge
  Jenkins->>+Kubernetes2: Deploy to UAT
  Kubernetes2->>-Jenkins: Deployment successful
  Jenkins->>+Postman1: Send API requests for validation
  Postman1-->>-Jenkins: Validation successful
  Jenkins->>+Slack: Notify of successful deployment and validation to UAT
  Slack-->>-Jenkins: Acknowledge
  Jenkins->>+Kubernetes3: Deploy to production
  Kubernetes3->>-Jenkins: Deployment successful
  Jenkins->>+Postman1: Send API requests for validation
  Postman1-->>-Jenkins: Validation successful
  Jenkins->>+Slack: Notify of successful deployment and validation to production
  Slack-->>-Jenkins: Acknowledge

```

Alternatively, if there is no `nav` section in `mkdocs.yml`, a navigation section
will be created for you. However, you will not be able to use alternate titles for
pages, or include links to other sites.

Note that MkDocs uses `mkdocs.yml`, not `mkdocs.yaml`, although both appear to work.
See also <https://www.mkdocs.org/user-guide/configuration/>.

## Support

That's it. If you need support, reach out in [#docs-like-code](https://discord.com/channels/687207715902193673/714754240933003266) on Discord.

