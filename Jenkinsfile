pipeline {
    agent any
    stages {
        stage('Dependencies Install') {
            steps {
                sh 'docker run --rm -v "$(pwd):/app" -w /app  node:18.17.0  sh -c "npm install && chmod 777 -R node_modules"'
            }
        }

        stage('Build-beta') {
            steps {
                sh 'docker run --rm -v "$(pwd):/app" -w /app  node:18.17.0  npm run build-only'
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
