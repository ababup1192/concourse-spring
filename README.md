# Concourse gradle

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
$ fly -t lite sp -p gradle-ci -c pipeline.yml -l ~/.concourse/credentials.yml
$ fly -t lite up -p gradle-ci
```

# Show report

[Report](https://github.com/ababup1192/hello-gradle-report)

