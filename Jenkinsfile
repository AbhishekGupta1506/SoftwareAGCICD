pipeline {
agent any
environment {
AssetDir = "/home/saguser/workspace/SoftwareAGAssets/README.md"
}
stages {
stage('checkout') {
steps {
if (fileExists(env.AssetDir)) {
            echo "Does not exist, cloning the project"
			sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
        } else {
            echo "Does exist, updating the project"
			
        }
}
}
}
}