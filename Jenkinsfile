pipeline {
agent any
stages {
stage('checkout') {
steps {
def SoftwareAGAssets = new File( '$pwd/SoftwareAGAssets' )
if ( !SoftwareAGAssets.exists() ) {
            echo 'Does not exist, cloning the project'
			sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
        } else {
            echo 'Does exist, updating the project'
			
        }
#sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
}
}
}
}