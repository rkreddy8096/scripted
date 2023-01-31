pipeline {
    agent any
    stages {
        stage ('ansible') {
            steps {
                sh 'export ANSIBLE_HOST_KEY_CHECKING=False'
                sh 'ansible -i hosts -m ping all'
                sh 'ansible-playbook -i hosts ansible.yaml'
            }
        }
    }
}
