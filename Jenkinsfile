pipeline {
	agent any
	environment{
		BRANCH_NAME = "master"
	}
	stages {
		stage('cleanup') {
		steps {
				dir('/home/saguser/workspace'){
					sh 'rm -rf *'
				}
			}
		}
		stage('checkout') {
			steps {
				sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
			}
		}
	}
}