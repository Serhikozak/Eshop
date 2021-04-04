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
    }
}

