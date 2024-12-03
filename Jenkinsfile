pipeline {
  agent any
  tools {nodejs "node" }
  stages {
    stage('Cloning Git') {
      steps {
        git url: 'https://github.com/kmatthew02/node-webapp.git',
        credentialsId: 'Git-2'
      }
    }
    stage('Build Container Image') {
      steps {
        agent{
          dockerfile {
              filename '$workspace/Dockerfile',
              label 'node'              
          }
        }
      }
    }
    stage('Build') {
       steps {
         sh 'npm install'
       }
    }
    stage('Test') {
      steps {
        sh "pwd"
      }
    }    
  }
}