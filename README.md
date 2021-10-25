# fharsanto/docker-compose
Docker compose with openssh client and bash

Use it for gitlab ci/cd deployment
```
docker_deploy:
  before_script:
    - eval $(ssh-agent -s);
    - echo "$DEPLOY_SSH_KEY" | tr -d '\r' | ssh-add -;
  image: fharsanto/docker-compose:main
  stage: deploy
  script:
    - ssh $DEPLOY_SSH_SERVER date
    - docker-compose -H "ssh://$DEPLOY_SSH_SERVER" pull || true;
```