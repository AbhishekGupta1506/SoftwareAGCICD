pipeline {
agent any
stages {
stage('checkout') {
steps {
def SoftwareAGAssets = '/home/saguser/workspace/SoftwareAGAssets/README.md'
if ( fileExists(SoftwareAGAssets) ) {
            echo 'Does not exist, cloning the project'
			sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
        } else {
            echo 'Does exist, updating the project'
			
        }
}
}
}
}