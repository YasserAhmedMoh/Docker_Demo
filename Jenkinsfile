pipline{
  agent any
  stages{
    stage('DELETION') { 
            steps {
                echo '--REMOVING REPOSITORY IF ALREADY EXIST --'
                sh "sudo rm -rf Docker_Demo"
            }
        }
     stage('CLONE') { 
            steps {
                echo '--CLONE STAGE EXECUTION ---'
                sh "git clone https://github.com/YasserAhmedMoh/Docker_Demo.git"
            }
        }
     stage('Say HELLO'){
          steps {
                echo 'Hello world'
              }
    }
    
  }
}
