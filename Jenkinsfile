pipeline {
    agent any
    stages {
        stage ('terraform') {
            steps {
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform apply --auto-approve'
            }
        }
    }
}