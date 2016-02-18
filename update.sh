#!/bin/sh -ex

if [ "$#" -ne 1 ] || [ -z "${PASSWORD}" ]
then
  echo "Usage: PASSWORD=xxx $0 VERSION"
  exit 1
fi

JENKINS_VERSION=$1
JENKINS_SHA=$(curl -sSL -u $USER:$PASSWORD https://repo-internal.cloudbees.com/com/cloudbees/operations-center/server/operations-center-war/$JENKINS_VERSION/operations-center-war-$JENKINS_VERSION.war.sha1)
echo $JENKINS_VERSION $JENKINS_SHA

sed -e "s/ENV JENKINS_VERSION .*/ENV JENKINS_VERSION $JENKINS_VERSION/g" -e "s/ENV JENKINS_SHA .*/ENV JENKINS_SHA $JENKINS_SHA/g" Dockerfile > Dockerfile.$JENKINS_VERSION
mv Dockerfile.$JENKINS_VERSION Dockerfile

docker build -t cloudbees/jenkins-operations-center:$JENKINS_VERSION .

git add Dockerfile
git commit -m "Update to ${JENKINS_VERSION}"
git tag cjoc-$JENKINS_VERSION
git push --tags
git push
