pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        bat(script: 'C:\\Program Files\\MATLAB\\R2018b\\bin\\matlab.exe', encoding: 'UTF-8', returnStatus: true, returnStdout: true)
      }
    }
  }
  environment {
    MATLABROOT = 'C:\\Program Files\\MATLAB'
    MATLABVER = 'R2018b'
  }
}