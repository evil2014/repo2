pipeline {
    agent any

    triggers {
        githubPush()
    }

    environment {
        DOCKER_BUILDKIT = "1"
    }

    stages {
        stage('Clonar código') {
            steps {
                checkout scm
            }
        }

        stage('Desplegar servicio') {
            when {
                expression {
                    return env.GIT_BRANCH == 'origin/main' || env.BRANCH_NAME == 'main'
                }
            }
            steps {
                echo 'Iniciando despliegue de prueba con Nginx...'
                sh 'chmod +x scripts/deploy.sh'
                sh './scripts/deploy.sh'
            }
        }
    }
}

