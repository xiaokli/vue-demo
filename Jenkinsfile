pipeline {
    agent any

    stages {
        stage("prepare")  {
            steps {
                sh 'docker run --rm -v "${PWD}:/app" -w "/app" node:21.4.0 npm install'
            }
        }

        stage("build") {
            steps {
                sh 'docker run --rm -v "${PWD}:/app" -w "/app" node:21.4.0 npm run build'
                archiveArtifacts artifacts: 'dist', fingerprint: true

            }
        }
    }
}