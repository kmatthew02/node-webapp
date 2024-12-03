pipeline {
  agent {label "agent"}
         stages{
           stage('Build'){
             steps{
               script{
                 def dockerImage = docker.build("hey")
                 dockerImage.run("-p 3000:3000")
               }
             }
         }

  
  }
}
