pipeline {
    agent {
        label 'slave1'
    }
    tools {
        maven 'maven-jenkins'
    }
    environment {
        PASS = credentials('registry-pass') 
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
             post {
                success {
                   archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
                }
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
         stage('Push') {
            steps {
                sh '''
                chmod +x ./scripts/push/push.sh
                ./scripts/push/push.sh
                '''
            }
        }
    }
}
