pipeline {
  agent any
  stages {
    stage('error') {
      steps {
        sh 'cd "$glinttTest" && git checkout master && git up'
      }
    }
  }
}