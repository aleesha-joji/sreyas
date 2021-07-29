pipeline {
    agent {label 'agent' }

    environment {
        registry = 'docker-services-training/sreyas/'
        }
    stages {
        stage('Build & Publish the image') { 
            steps { 
                script {
                    docker.withTool('docker') {
                        docker.withRegistry('https://artifactory.dagility.com', 'aleesha-registry'){
                            docker.build(registry + "ubuntu:apache").push()
                        }
                    }
                } 
            }
        }
    }
}

