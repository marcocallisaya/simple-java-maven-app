pipeline {
    agent {
        label 'slave1'
    }
    tools {
        maven 'maven-jenkins'
    }
    stages {
        stage('Build') {
            steps {
              sh '''
              mvn -B -DskipTests clean package
              chmod +x ./scripts/build/build.sh
              ./scripts/build/build.sh
              '''
            }
        }
         stage("Test"){
            steps {
                sh "mvn test"
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
    }
}
