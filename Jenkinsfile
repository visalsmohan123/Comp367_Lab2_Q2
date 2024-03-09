pipeline {
    agent any

    tools {
        maven 'maven'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'Build Started'
                bat 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'Executing Tests'
                bat 'mvn test'
            }
        }
        
    }
}
