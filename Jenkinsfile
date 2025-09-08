pipeline {
    agent any

    parameters {
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Terraform action to perform')
    }

    environment {
        TF_IN_AUTOMATION = "true"   // avoid interactive prompts
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
    
        stage('Terraform Init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Action') {
            steps {
                echo "Terraform action is --> ${params.ACTION}"
                sh "terraform ${params.ACTION} -auto-approve"
            }
        }
    }
}

    
