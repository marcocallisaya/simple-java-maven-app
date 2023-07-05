pipeline {
    agent {
        label 'slave1'
    }
    stages {
        stage('Build') {
            steps {
              //echo 'Hola mundo'
              sh 'mvn -B -DskipTests clean package'
            }
        }
    }
}
