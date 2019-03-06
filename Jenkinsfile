pipeline {
  agent any
  stages {
    stage('Hello') {
      steps {
        bat(script: '"C:\\Program Files\\MATLAB\\R2018b\\bin\\matlab.exe"', encoding: 'UTF-8', returnStatus: true, returnStdout: true, label: 'matlab')
      }
    }
    stage('error') {
      steps {
        bat(script: 'example.bat', encoding: 'UTF-8', label: 'example_bat', returnStatus: true, returnStdout: true)
      }
    }
    stage('Fin') {
      steps {
        archiveArtifacts(artifacts: '**/*.log', allowEmptyArchive: true, fingerprint: true, onlyIfSuccessful: true)
      }
    }
  }
  environment {
    MATLAB_BASE = 'C:\\Program Files\\MATLAB'
    MATLAB_VER = 'R2018b'
    Foo = 'Bar'
  }
}