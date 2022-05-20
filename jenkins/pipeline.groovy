pipeline {
    agent any
    stages {
        stage('Build') {
            git url: 'https://github.com/freddypaxton/web-server-project.git', branch: 'main'
            sh "chmod a+x %WORKSPACE%/jenkins/script.py"
            sh "python %WORKSPACE%/jenkins/script.py"
        }
    }
}