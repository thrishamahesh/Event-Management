pipeline {
    agent any

    environment {
        COMPOSE_PROJECT_NAME = "event_mgmt"
        
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/thrishamahesh/Event-Management.git'
            }
        }

        stage('Build & Run Containers') {
            steps {
                bat '''
                IF EXIST docker-compose.yml (
                    docker-compose down
                )
                '''
                bat 'docker-compose build'
                bat 'docker-compose up -d'
            }
        }

        // Optional: Add a health check or curl test here
        stage('Verify App Running') {
            steps {
                bat 'timeout /t 10 > NUL'  // Equivalent of sleep 10 in Windows
                bat '''
                curl -f http://localhost:8000 || (
                    echo App not responding
                    exit /b 1
                )
                '''
            }
        }

        // Optional: Add unit tests (if implemented)
        // stage('Run PHP Tests') {
        //     steps {
        //         bat 'docker exec web ./vendor/bin/phpunit'
        //     }
        // }

    }

    post {
        always {
            echo 'Cleaning up containers...'
            bat 'docker-compose down'
        }
    }
}
