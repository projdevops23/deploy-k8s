pipeline {
  agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
  }
  environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub')
  }
  stages {
//     stage('getDirectory') {
//       sh 'sudo scp /var/jenkins_home/workspace/java-web/target/spring-boot-thymeleaf-example-0.0.1-SNAPSHOT.war  /usr/local/tomcat/webapps/ROOT'
//     }
    stage('getDirectory') {
      steps {
        sh 'git clone https://github.com/projdevops23/deploy-k8s'
        sh 'cp /var/jenkins_home/workspace/java-web/target/spring-boot-thymeleaf-example-*.war /projdevops23/deploy-k8s'
        sh 'cd /projdevops23/deploy-k8s && git add . && git commit -m "Add war file" && git push origin main'
      }
    }
    
    stage('Build') {
      steps {
        sh 'sudo docker build -t devopss23/java-app /home/trainee/target/'
      }
    }
    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }
    stage('Push') {
      steps {
        sh 'sudo docker push devopss23/java-app:${BUILD_NUMBER}'
      }
    }
  }
  post {
    always {
      sh 'sudo docker logout'
    }
  }
}
