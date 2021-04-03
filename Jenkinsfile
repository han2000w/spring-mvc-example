pipeline {
    agent any
    tools {
        maven 'maven'
        jdk 'java1.8'
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
