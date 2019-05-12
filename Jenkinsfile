pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                sh '''
 			echo "hellow 3rd  world!"
			echo $GIT_URL
			echo $PWD
			cd app-node
			docker build  -t apinode . 
		   '''
            }
        }
    }
}
