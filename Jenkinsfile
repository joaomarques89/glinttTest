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
        bat '"C:\\Program Files\\Git\\bin\\sh.exe" --login -i -c "cd OSB_Greeting; mvn compile; mvn package -DoracleHome=$JDEV_HOME"'
      }
    }
    stage('Test on SOAPUI') {
      steps {
        bat '"C:\\Program Files\\Git\\bin\\sh.exe" --login -i -c "cd Testes; mvn com.smartbear.soapui:soapui-maven-plugin:4.6.1:test"'
      }
    }
    stage('Deploy') {
      steps {
        bat '"C:\\Program Files\\Git\\bin\\sh.exe" --login -i -c "mvn -f /c/Users/joao.m.marques/.jenkins/workspace/glinttTest_master/OSB_Greeting  pre-integration-test -DoracleServerUrl=http://localhost:7101 -DoracleUsername=weblogic -DoraclePassword=welcome1 -DoracleHome=$JDEV_HOME'
      }
    }
  }
}