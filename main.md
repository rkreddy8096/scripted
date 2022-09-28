pipeline {
    agent  { label 'OPENJDL-11-MAVEN' }
    stages {
        stage('git cloniing') {
            steps {
                git branch: 'new', url: 'https://github.com/rkreddy8096/scripted.git'
            }

        }
        stage('build packages') {
            steps {
                sh '/usr/share/maven/bin/mvn package'
            }
        }
        stage('archive results') {
            steps {
                junit '**/surefire-reports/*.xml'
            }
        }
         stage('artifactory') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar'
            }
         }   
    }

} 
