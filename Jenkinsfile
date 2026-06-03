pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Nischal-Budhathoki/pathNex-repo.git'
            }
        }

        stage('CI - Run Scripts') {
            steps {
                sh 'chmod +x *.sh'
                sh './operations.sh'
                sh './operationOwn.sh'
                sh './group_mgmt.sh'
                sh './process_operation.sh'
            }
        }

        stage('CD - Deploy to EC2') {
            steps {
                sh '''
                ssh -o StrictHostKeyChecking=no \
                -i ~/.ssh/jenkins-ci-cd.pem \
                ubuntu@51.20.75.98 '
                    cd ~/practice_folder &&
                    git pull origin main
                '
                '''
            }
        }
    }
}
