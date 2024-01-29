pipeline{
     agent any

     environment {
          AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
          AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
     }
     stages {
          stage('Terraform version'){
               steps{
                    sh 'terraform --version'
               }
          }
          stage('Terraform init'){
               steps{
                    dir('EKS_TERRAFORM') {
                         sh 'terraform init'
                    }
               }
          }
          stage('Terraform validate'){
               steps{
                    dir('EKS_TERRAFORM') {
                         sh 'terraform validate'
                    }
               }
          }
          stage('Terraform plan'){
               steps{
                    dir('EKS_TERRAFORM') {
                         sh 'terraform plan'
                    }
               }
          }
          stage('Terraform apply/destroy'){
               steps{
                    dir('EKS_TERRAFORM') {
                    sh 'terraform ${action} --auto-approve'
                    }
               }
          }
     }
}
