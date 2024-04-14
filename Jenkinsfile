pipeline {
    agent any

    stages {
        stage('Update') {
            steps {
                parallel(
                    update_1: echo 'A Update code',
                    update_2: echo 'B Update code at the same time'
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
