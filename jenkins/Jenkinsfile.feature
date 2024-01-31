pipeline {
    agent any
    stages {
        stage('Dependencies Install') {
            steps {
                sh 'docker run --rm -v "$(pwd):/app" -w /app  node:18.17.0   npm install'
            }
        }

        stage('Run Link') {
            steps {
                sh 'echo "lint..."'
            }
        }

        stage('Deploy - regression') {
            steps {
                sh 'echo "lint..."'
            }
        }
    }
    post {
        always {
            sh 'docker run --rm -v "$(pwd):/app" -w /app  node:18.17.0 sh -c "git config --global --add safe.directory /app &&  git clean -xdf"'
        }
    }
}
