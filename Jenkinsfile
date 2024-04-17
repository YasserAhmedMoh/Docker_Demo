pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('yasser_dockerhub')
	}

	stages {
	    
	    

		stage('Build') {

			steps {
				sh 'docker build -t yasser744/SCM_helloworld:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push yasser744/SCM_helloworld:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}

