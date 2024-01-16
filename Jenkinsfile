pipeline {
    agent any
    stages{
        stage("Clone Code"){
            steps{
                git url: "https://github.com/sweety2607/node-todo-cicd.git", branch: "main"
            }


environment{
 DOCKERHUB_CREDENTIALS = credentials ("dockerhub_id")

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
			
                sh "docker run -p 80:80 -d sweety2607/html-app-test1:latest"
            }
        }
    }
}
