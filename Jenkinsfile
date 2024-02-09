pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                git branch: 'main', url: 'https://github.com/Kobe24ever/WorldOfGames'
            }
        }
        stage('Build') {
            steps {
                // Build your Docker image
                sh 'docker build --no-cache -t games_img .'
                docker run -t games_img /bin/bash
                pip list

            }
        }
        stage('Run Services') {
            steps {
                // Use Docker Compose to start services
                sh 'docker-compose up -d'
            }
        }
        stage('Test') {
            steps {
                // dir('/c/Users/Administrator/.jenkins/workspace/test_pipeline/tests') {
                    // Run your Selenium tests
                    sh '/c/Users/Administrator/.jenkins/workspace/test_pipeline/tests/e2e.py'
                // }
            }
        }
        stage('Finalize') {
            steps {
                // Stop and remove the Docker Compose services
                sh 'docker-compose down'

                // Push the Docker image to DockerHub
                sh 'docker push games_img'
            }
        }
    }
}
