pipeline {
    agent any
    
    tools {
        terraform 'Jenkins-terraform'
    }
	
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        ACCESS_SECRET_ACCESS_KEY = credentials('ACCESS_SECRET_ACCESS_KEY')
    }
	
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main' , url:'https://github.com/chingari5268/terraformcicd.git'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
