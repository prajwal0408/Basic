node{
    stage('GitPull'){
        git credentialsId: '8e964b71-a5d8-41cb-8cbb-29e5fb33411a', url: 'https://github.com/prajwal0408/Basic.git'
        step([$class: 'Mailer', notifyEveryUnstableBuild: true, recipients: 'prajwal.narayan@tecnotree.com', sendToIndividuals: false])
    }
    
    stage('CodeCompileAndCodeExecution'){
        bat '''echo %cd%
        echo %JOB_NAME%
        javac Add.java
		java Add'''
    }
        
    stage('Release'){
        emailext attachLog: true, body: 'Software built successfully and executed', subject: '$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS!', to: 'prajwal.narayan@tecnotree.com'
    }

}