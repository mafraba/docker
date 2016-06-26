# CloudBees Jenkins Operations Center Docker image

This is a fully functional [CloudBees Jenkins Operations Center](https://www.cloudbees.com/products/cloudbees-jenkins-platform).


![CloudBees](https://www.cloudbees.com/sites/default/files/cloudbees-enterprise-notag-withbutler-logo-home.png)


# Usage

```
docker run -p 8080:8080 -p 50000:50000 cloudbees/jenkins-operations-center
```

NOTE: read below the _build executors_ part for the role of the `50000` port mapping.

This will store the workspace in /var/jenkins_home. All Jenkins data lives in there - including plugins and configuration.
You will probably want to make that a persistent volume (recommended):

```
docker run -p 8080:8080 -p 50000:50000 -v /your/home:/var/jenkins_home cloudbees/jenkins-operations-center
```

This will store the jenkins data in `/your/home` on the host.
Ensure that `/your/home` is accessible by the jenkins user in container (jenkins user - uid 1000) or use `-u some_other_user` parameter with `docker run`.


You can also use a volume container:

```
docker run --name myjenkins -p 8080:8080 -p 50000:50000 -v /var/jenkins_home cloudbees/jenkins-operations-center
```

Then myjenkins container has the volume (please do read about docker volume handling to find out more).

## Backing up data

See [Jenkins Docker Image Documentation / Backing up data](https://hub.docker.com/_/jenkins/).

# Setting the number of executors

See [Jenkins Docker Image Documentation / Setting the number of executors](https://hub.docker.com/_/jenkins/).


# Attaching build executors

See [Jenkins Docker Image Documentation / Attaching build executors](https://hub.docker.com/_/jenkins/).

# Passing JVM parameters

See [Jenkins Docker Image Documentation / Passing JVM parameters](https://hub.docker.com/_/jenkins/).

# Configuring logging

See [Jenkins Docker Image Documentation / Configuring logging](https://hub.docker.com/_/jenkins/).

# Passing Jenkins launcher parameters

See [Jenkins Docker Image Documentation / Passing Jenkins launcher parameters](https://hub.docker.com/_/jenkins/).

# Installing more tools

See [Jenkins Docker Image Documentation / Installing more tools](https://hub.docker.com/_/jenkins/).

## Preinstalling plugins

See [Jenkins Docker Image Documentation / Preinstalling plugins](https://hub.docker.com/_/jenkins/).

# Upgrading

See [Jenkins Docker Image Documentation / Upgrading](https://hub.docker.com/_/jenkins/).


# Support?

Contact CloudBees support at https://support.cloudbees.com
