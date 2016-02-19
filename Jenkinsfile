node('dockerhub') {
  def repo = "cloudbees/jenkins-enterprise"
  def branch = "cje"

  //docker.withRegistry('', 'dockerhub') {
    stage 'Build'
    git url: 'https://github.com/cloudbees/docker.git', branch: branch
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
