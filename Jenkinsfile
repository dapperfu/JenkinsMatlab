pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        bat(script: '"C:\\Program Files\\MATLAB\\R2018b\\bin\\matlab.exe"', encoding: 'UTF-8', returnStatus: true, returnStdout: true, label: 'matlab')
      }
    }
    stage('Matlab') {
      parallel {
        stage('error') {
          steps {
            bat(script: 'example.bat', encoding: 'UTF-8', label: 'example_bat', returnStatus: true, returnStdout: true)
          }
        }
        stage('error') {
          steps {
            bat(returnStatus: true, returnStdout: true, script: 'example_build.bat', encoding: 'UTF-8', label: 'example_build')
          }
        }
      }
    }
    stage('Fin') {
      steps {
        archiveArtifacts(artifacts: '**/*.log', allowEmptyArchive: true, fingerprint: true, onlyIfSuccessful: true)
        archiveArtifacts(artifacts: '**/*_ert_rtw', fingerprint: true, onlyIfSuccessful: true, allowEmptyArchive: true)
      }
    }
  }
  environment {
    MATLAB_BASE = 'C:\\Program Files\\MATLAB'
    MATLAB_VER = 'R2018b'
    Foo = 'Bar'
  }
}