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
                sh 'docker build -t games_img .'
            }
        }
        stage('Run') {
            steps {
                // Run your Dockerized application
                sh 'docker run -d -p 8777:8777 -v /c/Users/Administrator/.jenkins/workspace/test_pipeline/Scores.txt:/app/Scores.txt --name games_cont games_img'
            }
        }
        stage('Test') {
            steps {
                dir('/c/Users/Administrator/.jenkins/workspace/test_pipeline/e2e.py') {
                    // Run your Selenium tests
                    sh 'python e2e.py'
                }
            }
        }
        stage('Finalize') {
            steps {
                // Stop and remove the Docker container
                sh 'docker stop games_cont'
                sh 'docker rm games_cont'

                // Push the Docker image to DockerHub
                sh 'docker push games_img'
            }
        }
    }
}
