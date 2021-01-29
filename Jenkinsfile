pipeline {
    agent any
    tools {
        maven 'LocalMaven'
        jdk 'jdk8'
    }
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    echo "Archiving Artifact... !"
                    archiveArtifacts artifacts : '**/*.war'
                }
            }
        }
        stage('Create Docker Image for Tomcat'){
            steps {
                sh "chmod +x Dockerfile"
                sh "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }
    }
}
