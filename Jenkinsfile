pipeline {
    agent any

    environment {
        COMPOSE_PROJECT_NAME = "event_mgmt"
    }

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/thrishamahesh/Event-Management.git'
            }
        }

        stage('Build & Run Containers') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose build'
                sh 'docker-compose up -d'
            }
        }

        // Optional: Add a health check or curl test here
        stage('Verify App Running') {
            steps {
                sh 'sleep 10'  // Wait for containers to be ready
                sh 'curl -f http://localhost:8000 || echo "App not responding"'
            }
        }

        // Optional: Add unit tests (if implemented)
        // stage('Run PHP Tests') {
        //     steps {
        //         sh 'docker exec web ./vendor/bin/phpunit'
        //     }
        // }

    }

    post {
        always {
            echo 'Cleaning up containers...'
            sh 'docker-compose down'
        }
    }
}
