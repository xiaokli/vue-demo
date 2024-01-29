pipeline {
    agent any

    stages {
        stage("prepare")  {
            steps {
                sh 'docker run --rm -v "${PWD}:/app" -w "/app" node:18.7.0 npm install'
            }
        }
    }
}