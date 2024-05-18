pipeline {
    agent any
    environment {
        AWS_CREDENTIALS = credentials('faaf7795-dbfd-4c83-b67f-bb2a3d227954')
    }
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Buskette/my-terraform-repo.git'
            }
        }
        stage('Terraform Init') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'faaf7795-dbfd-4c83-b67f-bb2a3d227954']]) {
                    sh 'terraform init'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'faaf7795-dbfd-4c83-b67f-bb2a3d227954']]) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
