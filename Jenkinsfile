pipeline {
    agent any
    environment {
        dockerImages = "suvam1/jenkins-project"
    }
    stages {
        stage('Build Java App') {
            // agent {
            //     label 'slave-node1'
            // }
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo 'Build Completed so archiving the war file'
                    archiveArtifacts artifacts: '**/*.war', followSymlinks: false

                }
            }
        }
        stage('Create Docker image') {
            // agent {
            //     label 'slave-node1'
            // }   
            steps {
                copyArtifacts filter: '**/*.war', fingerprintArtifacts: true, projectName: env.JOB_NAME, selector: specific(env.BUILD_NUMBER)
                echo "creating docker image "
                sh "docker build -t $dockerImages:$BUILD_NUMBER ."
            }
        }
        stage('Trivy Scan for Docker Image'){
            // agent {
            //     label 'slave-node1'
            // }  // Fixed missing closing brace
            steps {
                sh 'echo'
                sh 'trivy image --exit-code 1 --severity HIGH,CRITICAL --ignore-unfixed $dockerImages:$BUILD_NUMBER'
            }
        }

        stage('Push Image') {
            // agent {
            //     label 'slave-node1'
            // }
            steps {
                withDockerRegistry(credentialsId: 'dockerhub-credentials', url: ''){
                    sh '''
                    docker push $dockerImages:$BUILD_NUMBER
                    '''
                }
            }
        }

        // stage('Deploy to Development Env') {
        //     agent {
        //         label 'slave-node1'
        //     }
        //     steps {
        //         echo "Running app on  Development env"
        //         sh '''
        //         docker stop tomcatInstanceDev || true
        //         docker rm tomcatInstanceDev || true
        //         docker run -itd --name tomcatInstanceDev -p 8082:8080 $dockerImages:$BUILD_NUMBER
        //         '''
        //     }
        // }
        // stage('Deploy Production Environment') {
        //     agent {
        //         label 'slave-node1'
        //     }
        //     steps {
        //         timeout(time:1, unit:'DAYS'){
        //             input message:'Approve PRODUCTION Deployment?'
        //         }
        //         echo "Running app on Prod env"
        //         sh '''
        //         docker stop tomcatInstanceProd || true
        //         docker rm tomcatInstanceProd || true
        //         docker run -itd --name tomcatInstanceProd -p 8083:8080 $dockerImages:$BUILD_NUMBER
        //         '''
        //     }
        // }
    }
}
