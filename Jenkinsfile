pipeline{
  agent any

  triggers {
     githubPush()
  }

  environment {
     DOCKER_BUILDKIT = 1
  }

  
  stages {
     stage('Clonar cógigo') {
	steps {
 	   checkout scm
	}
     }

     stage('Desplegar servicio') {
	when {
	    branch 'main'	
	}
	steps {
	    echo 'Ejecuentando despliegue..'
	    sh 'chmod +x scripts/deploy.sh'
	    sh './scripts/deploy.sh'
	}
     }
  }
}
