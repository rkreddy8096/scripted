pipeline {
    agent any
    stages {
        stage ('ansible') {
            steps {
                sh 'ansible -i hosts -m ping all'
                sh 'ansible-playbook -i hosts ansible.yaml'
            }
        }
    }
}