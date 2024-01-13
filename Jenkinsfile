pipeline {
    agent any
    stages{
        stage("Clone Code"){
            steps{
                git url: "https://github.com/sweety2607/node-todo-cicd.git", branch: "main"
            }
        }
        stage("Build and Test"){
            steps{
                sh " sudo docker build -t html-app-test1 ."
            }
        }
        stage("Push to Docker Hub"){
            steps{
                  sh " sudo docker push html-app-test1:latest"
                }
            }
        stage("Deploy"){
            steps{
			
                sh " sudo docker-compose down && docker-compose up -d"
            }
        }
    }
}
