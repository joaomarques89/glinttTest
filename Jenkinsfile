pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        bat '"C:\\Program Files\\Git\\bin\\sh.exe" --login -i -c "/c/Users/joao.m.marques/Documents/jenkinsScripTest/CheckoutScript.sh"'
      }
    }
    stage('Build/Packaging') {
      steps {
        bat '"C:\\Program Files\\Git\\bin\\sh.exe" --login -i -c "echo $MAVEN_HOME"'
      }
    }
  }
}