pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
                sh '''
 			echo "hellow 3rd  world!"
			echo $GIT_URL
			echo $PWD
			docker build -f ./app-node/Dockerfile -t apinode . 
		   '''
            }
        }
    }
}
