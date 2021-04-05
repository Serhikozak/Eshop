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
                ng build --prod
                '''
            }

        }
    }
}

