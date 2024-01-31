pipeline {
    agent any
    
    stages {
        stage('Install Deps') {
            steps {
                script {
                    echo 'Install Deps'
                    // Your common build steps go here
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    echo 'Running tests...'
                    // Your common test steps go here
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    echo 'Running Build'
                    // Your common build steps go here
                }
            }
        }
    }

    // Define additional stages based on branch name
    when {
        expression {
            // Define conditions based on branch name
            return env.BRANCH_NAME ==~ 'dev\/beta-.*'
        }
    }

    stages {
        stage('Additional Stage for Dev/Beta-* Branch') {
            steps {
                script {
                    echo 'Running additional steps for dev/beta-* branch...'
                    // Your additional steps for the master branch go here
                }
            }
        }
    }

    when {
        expression {
            return env.BRANCH_NAME == 'main'
        }
    }

    stages {
        stage('Additional Stage for Main Branch') {
            steps {
                script {
                    echo 'Running additional steps for Main branch...'
                    // Your additional steps for the feature branch go here
                }
            }
        }
    }
}
