 
pipeline {
    agent any
    stages {
        
        stage('Install dependencies') {
            steps {
                echo 'Install dependencies'
                script {
                    if(isUnix()){
                        sh 'npm install'
                    }else {
                        bat 'npm install'
                    }
                }
                
            }
        }
        stage('Run tests') {
            steps {
                echo 'Run the test'
                script {
                    if(isUnix()){
                       sh 'npm run test' 
                    }else {
                        bat 'npm run test'
                    }
                }
            }
        }
        stage('Publish reports') {
            steps {
                echo 'Publish the report'
                publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, icon: '', keepAll: false, reportDir: 'reports', reportFiles: 'report.html', reportName: 'HTML Report', reportTitles: '', useWrapperFileDirectly: true])
            }
        }
    }
}
 
 