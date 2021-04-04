pipeline {
    agent any

    stages {
        stage('Backend') {
            steps {
                echo 'Hello World'
                sh '''
                pwd
                mvn package -DskipTests
                pwd
                '''
            }
        }
    }
}

