pipeline {
  agent {linux-node true}
  stages {
    stage('Cloning Git') {
      steps {
        git url: 'https://github.com/kmatthew02/node-webapp.git',
        credentialsId: 'kmatthew02'
      }
    }
    stage('Build Container Image') {
      steps {
        agent{
          linux-node {
            checkout scm
            def customImage = docker.build("my-image:${env.BUILD_ID}")
            customImage.inside {
              sh 'Heyyo:)'
            }
          }
          
        }
      }
    }
  }
}
