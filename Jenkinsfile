pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'cd $glinttTest && git checkout master && git up'
      }
    }
  }
}