pipeline {
    agent { label 'ubuntu-agent' }
    stages {
        stage('Agent Details') {
            steps {
                sh 'echo "Hello from Jenkins Agent"'
                sh 'echo "Build executed successfully"'
                sh 'hostname'
                sh 'whoami'
                sh 'java -version'
            }
        }
    }
}
