pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "your_dockerhub_username/myapp:latest"
        GIT_REPO = "https://github.com/username/myapp.git"
        DOCKER_CREDENTIALS_ID = "dockerhub_credentials"
    }

    tools {
        maven 'Maven3'
        jdk 'JDK11'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${env.GIT_REPO}"
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                success {
                    junit '**/target/surefire-reports/*.xml'
                }
            }
        }

        stage('Docker Build and Push') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', env.DOCKER_CREDENTIALS_ID) {
                        sh "docker build -t ${DOCKER_IMAGE} ."
                        sh "docker push ${DOCKER_IMAGE}"
                    }
                }
            }
        }

        stage('Deploy to Staging') {
            steps {
                sh './scripts/deploy-to-staging.sh'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
