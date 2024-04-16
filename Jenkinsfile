pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('yasser_dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/YasserAhmedMoh/Docker_Demo.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t docker_test/helloworld:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push docker_test/helloworld:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}

