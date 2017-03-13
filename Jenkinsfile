node {
   stage('Build') {
        try {
            bat('example.bat')
        } finally {
            archive '*.log'
        }
   }
}