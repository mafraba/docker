node('dockerhub') {
  def repo = "cloudbees/jenkins-operations-center"

  //docker.withRegistry('', 'dockerhub') {
    stage 'Build'
    checkout scm
    sh "docker build --build-arg VERSION=${VERSION} --build-arg SHA=${SHA} -t ${repo}:${VERSION} ."
    // need --build-arg support
    //def img = docker.build("${repo}:${VERSION}")
    def img = docker.image("${repo}:${VERSION}")
    img.tag("latest")

    stage 'Push'
    img.push();
    img.push('latest');
  //}
}
