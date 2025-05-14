pipeline{
    agent any
    stages{
        stage("Checkout"){
            steps{
                withCredentials([gitUsernamePassword(credentialsId: 'Githubharicredentials', gitToolName: '')]) {}
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
                    sh "terraform plan "
                }

            }
        } 
    }

}


// withCredentials([gitUsernamePassword(credentialsId: 'Githubharicredentials', gitToolName: '')]) {
//     // some block
// }