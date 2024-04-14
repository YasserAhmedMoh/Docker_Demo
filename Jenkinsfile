pipeline {
    agent any

    stages {
        stage('Update') {
            steps {
                parallel(
                    update_1: { echo " Update code_1" },
                    update_2: { echo " Update code at the same time"}
                )
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
