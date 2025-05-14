pipeline{
    agent any
    parameters {
            choice choices: ['true', 'false'], description: 'you want me to run terraform init....', name: 'initialization'
    }
    stages{
        stage("Checkout"){
            steps{
                withCredentials([gitUsernamePassword(credentialsId: 'Githubharicredentials', gitToolName: '')]) {}
                }
        }
        stage("Init"){
                when {
                expression {
                    params.initialization == 'true' // Check if the parameter RUN_DEPLOY is true
                }
            }
                steps {
                    sh "terraform init --reconfigure"
                }
        }
        stage ("Plan"){
            steps {
                catchError(catchInterruptions: false, buildResult: 'FAILURE', message: 'Moving to second stage regardless of the build status...', stageResult: 'SUCCESS') {
                    sh "terraform plan "
                }
            }
        }
        stage ("Create"){
            steps {
                catchError(catchInterruptions: false,buildResult: 'FAILURE',  message: 'Moving to second stage regardless of the build status...', stageResult: 'FAILURE') {
                    sh "terraform apply --auto-approve "
                }

            }
        } 
    }

}


// withCredentials([gitUsernamePassword(credentialsId: 'Githubharicredentials', gitToolName: '')]) {
//     // some block
// }
//now checking github-webhooks..