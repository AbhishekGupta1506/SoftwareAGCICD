pipeline {
	agent any
	stages {
		stage('cleanup') {
			dir('/home/saguser/workspace/SoftwareAGAssets'){
				sh 'rm -rf /home/saguser/workspace/SoftwareAGAssets'
			}
		}
		stage('checkout') {
			steps {
				sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
			}
		}
	}
}