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
            }
        }
        stage("TF Validate"){
            steps{
                echo "Validating Terraform Code"
            }
        }
        stage("TF Plan"){
            steps{
                echo "Executing Terraform Plan"
            }
        }
        stage("TF Apply"){
            steps{
                echo "Executing Terraform Apply"
            }
        }
        stage("Invoke Lambda"){
            steps{
                echo "Invoking your AWS Lambda"
            }
        }
    }
}






