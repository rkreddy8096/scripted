node {
    stage('test') {
        sh 'echo hello'
    }
    stage('learning') {
        git url: 'https://github.com/spring-projects/spring-petclinic.git',
            branch: 'main'
    }
}
