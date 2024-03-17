pipeline {
    agent any
    
	tools {
        maven 'maven'
    }
    stages {
        stage('Check out') {
            steps {
                checkout scm
            }
        }
        
        stage('Build Maven Project') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }
        
        stage('Add Code Coverage') {
            steps {
                bat 'mvn jacoco:report'
            }
        }
        
        stage('Add Docker Hub Credentials') {
            steps {
                withCredentials([usernamePassword(credentialsId: '', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                }
            }
        }
        
        stage('Docker Build') {
            steps {
                bat 'docker build -t comp367-lab3-image .'
            }
        }
        
        stage('Docker Login') {
            steps {
                bat 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
            }
        }
        
        stage('Docker Push') {
            steps {
                bat 'docker push comp367-lab3-image'
            }
        }
    }
}
