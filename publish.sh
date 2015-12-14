echo $JENKINS_VERSION
JENKINS_SHA=$(curl -u $USER:$PASS https://repo-internal.cloudbees.com/com/cloudbees/operations-center/server/operations-center-war/$JENKINS_VERSION/operations-center-war-$JENKINS_VERSION.war.sha1)
echo $JENKINS_SHA

sed -e "s/ENV JENKINS_VERSION .*/ENV JENKINS_VERSION $JENKINS_VERSION/g" -e "s/ENV JENKINS_SHA .*/ENV JENKINS_SHA $JENKINS_SHA/g" Dockerfile > Dockerfile.$JENKINS_VERSION

docker build --no-cache -f Dockerfile.$JENKINS_VERSION -t cloudbees/jenkins-operations-center:$JENKINS_VERSION .
docker push cloudbees/jenkins-operations-center:$JENKINS_VERSION

docker build -f Dockerfile.$JENKINS_VERSION -t cloudbees/jenkins-operations-center:latest .
docker push cloudbees/jenkins-operations-center:latest

git tag cjoc-$JENKINS_VERSION
git push --tags
