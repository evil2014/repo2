pipeline{
  agent any

  trigger {
     githubPush()
  }

  enviroment {
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
	    sh 'chmod +x scripts/deploy.sh'y
	    sh './scripts/deploy.sh'
	}
     }
  }
}
