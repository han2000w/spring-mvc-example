pipeline {
    environment {
        registry = "192.168.75.250/han2000w"
    }
    agent any
    tools {
        maven 'maven'
        jdk 'java1.8'
    }
    stages {
        stage('Build and Test') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Example') {
            steps {
                echo 'Hello World'
                echo "Hello HI!!!"
            }
        }
        stage('han2000w') {
            steps {
                echo "hi"
            }
        }
        
        stage('Sonarqube') {
            environment {
                scannerHome = tool 'sonaqube_scanner'
            }
                
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh "${scannerHome}/bin/sonar-scanner"
            }
            }
        }
        
        
        
        //stage('Docker build') {
            //steps {
                //sh 'docker build -t $registry/mvc:latest .'
            //}
        //}
    }
}
