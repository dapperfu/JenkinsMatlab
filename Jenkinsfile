pipeline {
  agent any
  stages {
    stage('') {
      steps {
        bat(script: 'echo Hello World', encoding: 'UTF-8', returnStatus: true, returnStdout: true)
      }
    }
  }
  environment {
    MATLABROOT = 'C:\\Program Files\\MATLAB'
    MATLABVER = 'R2018b'
  }
}