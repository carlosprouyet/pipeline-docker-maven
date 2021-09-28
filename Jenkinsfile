pipeline {

    agent any

    environment {
  		PASS = credentials('registry-pass')
    }

    stages {

        stage('Build') {
            steps {
                sh '''
			./jenkins/build/mvn.sh mvn -B -DskipTests clean package
           
                    '''   
            }
            post {
                success {
                    archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
                }
            }

        }                        
        stage('Test') {
            steps {
		sh './jenkins/test/test.sh mvn test' 
            }
            post {
                always {
                    junit 'java-app/target/surefire-reports/*.xml'
                }
	    }

        }
        stage('Deploy') {
            steps {
       		sh './jenkins/build/build.sh'
            }
        }
    }
}
