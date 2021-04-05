pipeline {
    agent any

    stages {
        stage('Backend') {
            steps {
                echo 'Hello World'
                sh '''
                pwd
                cd backend
                mvn package -DskipTests
                pwd
                '''
            }
        }
        stage('Frontend') {
            steps {
                sh '''
                pwd
                cd frontend
                npm install
                ng build --prod
                '''
            }
        }
        stage('Docker-compose') {
            steps {
                sh '''
                pwd
                sudo docker-compose up --build
                '''
            }
        }
    }
}

