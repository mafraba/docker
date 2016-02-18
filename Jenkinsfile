node('dockerhub') {
  def repo = "cloudbees/jenkins-enterprise"

  //docker.withRegistry('', 'dockerhub') {
    stage 'Build'
    checkout scm
    sh "docker build --build-arg VERSION=${VERSION} --build-arg SHA=${SHA} -t ${repo}:${VERSION} ."
    // need --build-arg support
    //def img = docker.build("${repo}:${VERSION}")

    stage 'Push'
    sh "docker push ${repo}:latest"
    sh "docker push ${repo}:${VERSION}"
    //img.push();
    //img.push('latest');
  //}
}
