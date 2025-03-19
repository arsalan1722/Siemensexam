pipeline{
    agent any
    
     environment {
        AWS_REGION = 'ap-south-1'
           }
    
    stages{
 
        stage('Checkout Code') {
            steps {
                git 'https://github.com/arsalan1722/Siemensexam.git'
            }
        }

        stage("TF Init"){
            steps{
                echo "Executing Terraform Init"
                sh 'terraform init'
            }
        }
        stage("TF Plan"){
            steps{
                echo "Executing Terraform Plan"
                sh 'terraform plan'
            }
        }

        }
    }
}






