pipeline {
    agent any
      options {
        // Skip checking out code by default
        skipDefaultCheckout()
    }


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
            when {
                expression {
                    // Use an expression to determine whether to run the stage
                    return env.BRANCH_NAME == 'main'
                }
            }
            steps {
                script {
                    echo 'Running additional steps for main branches...'
                }
            }
        }
        stage('Additional Stage for dev/beta Branch') {
            when {
                expression {
                    // Use an expression to determine whether to run the stage
                    return env.BRANCH_NAME =~ /^dev\/beta-.*/
                }
            }
            steps {
                script {
                        echo 'Running additional steps for dev/beta branches...'
                  
                }
            }
        }
    }
}
