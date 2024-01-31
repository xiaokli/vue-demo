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

          stage('Additional Stage for main Branch') {
            steps {
                script {
                     if (env.BRANCH_NAME == 'main') {
                        echo 'Running additional steps for main branches...'
                        // Your additional steps go here
                    } else {
                        echo 'No additional steps for this branch...'
                    }
                }
            }
        }
        stage('Additional Stage for dev/beta Branch') {
            steps {
                script {
                     if (env.BRANCH_NAME =~ /^dev\/beta-.*/) {
                        echo 'Running additional steps for dev/beta branches...'
                        // Your additional steps go here
                    } else {
                        echo 'No additional steps for this branch...'
                    }
                }
            }
        }
    }
}
