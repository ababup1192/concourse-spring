# Concourse spring

![Pipeline](https://raw.githubusercontent.com/ababup1192/concourse-gradle/master/img/pipe-image.png)

# Prepare

## Install

- [Concourse](https://concourse.ci/index.html)
- [Fly Binaries](https://concourse.ci/downloads.html)

## Modify

### Report Repository

[report repository](https://github.com/ababup1192/concourse-gradle/blob/master/pipeline.yml#L17).

### Credentials

~/.concourse/credentials.yml
```yaml
---
github-private-key: |
  -----BEGIN RSA PRIVATE KEY-----
  ...
  -----END RSA PRIVATE KEY-----
```

### Environment

enviroment.yml

```yaml
---
# This Concourse Repository
git-repo: https://github.com/ababup1192/concourse-spring.git
# Test Target (Gradle Project)
target-uri: https://github.com/ababup1192/SpringMigrator.git
report-uri: git@github.com:ababup1192/hello-spring-report.git
```

### Slack Webhook URI

slack-notice.sh

```
# Incoming WebHooks URL
WEBHOOKURL="https://hooks.slack.com/services/xxxx/xxxxxx"
```

# Launch

```
$ vagrant init concourse/lite
$ vagrant up
```

## Login

```
$ fly -t lite login -c http://192.168.100.4:8080
```

## Execute

```
$ fly -t lite sp -p spring-ci -c pipeline.yml -l ~/.concourse/credentials.yml -l environment.yml
$ fly -t lite up -p spring-ci
```

# Show report

[Report](https://github.com/ababup1192/hello-spring-report)

