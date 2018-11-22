pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh '''#!/bin/sh
cd "${glinttTest}" && git checkout master && git up'''
      }
    }
  }
}