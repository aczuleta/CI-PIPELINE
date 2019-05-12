pipeline {
    agent any
    environment{
        DOCKER_PASSWD = credentials('DOCKER_HUB_PASSWD')
        DOCKER_USER = credentials('DOCKER_HUB_USER')
    }
    stages {
        stage('Build'){
            steps {
                sh '''
 			echo "hellow 3rd  world!"
			echo $GIT_URL
			echo $PWD
			cd app-node
			docker build  -t aczuleta10/apinode . 
		   '''
            }
        }

        stage("Push"){
            steps{
                sh '''
                    docker login -u $DOCKER_USER -p $DOCKER_PASSWD
                    docker push aczuleta10/apinode
                '''
            }
        }
    }
}
