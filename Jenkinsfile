pipeline {
    agent none
    options { skipDefaultCheckout(true) }
    stages {
        stage('Build and Test') {
            steps {
                sh 'mvn clean package'
            }
        }
  }
}
