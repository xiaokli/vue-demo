pipeline {
    agent any
    stages {
        stage('Dependencies Install') {
            steps {
                sh 'docker run --rm -v "$(pwd):/app" -w /app  node:18.17.0  sh -c "useradd -m jenkins && su jenkins -c \" npm install\""'
            }
        }

        stage('Build-beta') {
            steps {
                sh 'docker run --rm -v "$(pwd):/app" -w /app  node:18.17.0  sh -c "useradd -m jenkins && su jenkins -c\" npm run build-only\""'
                sh 'tar -czf web-beta.tar.gz dist'
                archiveArtifacts 'web-beta.tar.gz'
            }
        }

        stage('Deploy - beta') {
            steps {
                input(message: 'Do you want to proceed?', ok: 'Proceed')
                sh 'echo "skipping ......."'
            }
        }

        stage('Deploy - prod') {
            steps {
                input(message: 'Do you want to proceed?', ok: 'Proceed')
                sh 'echo "skipping ......."'
            }
        }
    }
}
