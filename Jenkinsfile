pipeline {
    agent any
    tools {
        maven 'maven'        
    options { skipDefaultCheckout(true) }
    stages {
        stage('Build and Test') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
  }
}
