pipeline {
    agent {
        label 'slave1'
    }
    tools {
        maven 'mvn-jenkins'
    }
    stages {
        stage('Build') {
            steps {
              //echo 'Hola mundo'
              sh 'mvn -B -DskipTests clean package'
            }
        }
         stage("Test"){
            steps {
                sh "mvn test"
            }

        }
    }
}
