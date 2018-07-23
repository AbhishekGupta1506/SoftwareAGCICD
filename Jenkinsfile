pipeline {
	agent any
	environment{
		BRANCH_NAME = "master"
	}
	stages {
		stage('cleanup') {
			if (env.BRANCH_NAME == 'master') {
				echo 'I only execute on the master branch'
			} else {
				echo 'I execute elsewhere'
			}
		}
		stage('checkout') {
			steps {
				sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
			}
		}
	}
}