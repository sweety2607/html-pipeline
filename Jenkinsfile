pipeline {
    agent any
    stages{
        stage("Clone Code"){
            steps{
                git url: "https://github.com/sweety2607/html-pipeline.git", branch: "main"
            }
              


        }
        stage("Build and Test"){
            steps{
                sh " docker build -t sweety2607/html-app-test1 ."
            }
        }
        stage("Push to Docker Hub"){
            steps{
                  sh " docker push sweety2607/html-app-test1:latest"
                }
            }
        stage("Deploy"){
            steps{
			
                sh "sshpass -p 'pagal' ssh ubuntu@35.172.183.68 'docker run -p 80:80 -d sweety2607/html-app-test1:latest'"
            }
        }
    }
}

