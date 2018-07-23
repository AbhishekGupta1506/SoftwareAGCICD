pipeline {
	agent {
			node {
				label 'docker-swarm'
				customWorkspace '/home/saguser/workspace'
			}
		}
	environment{
		BRANCH_NAME = "master"
	}
	stages {
		stage('cleanup') {
		steps {
				dir('/home/saguser/workspace'){
					sh 'rm -rf SoftwareAGAssets'
					sh 'rm -rf SoftwareAGBuildAssets'
				}
			}
		}
		stage('checkout source Assets') {
			steps {
				sh 'git clone http://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
			}
		}
		stage('checkout build Assets') {
			steps {
				sh 'git clone https://github.com/AbhishekGupta1506/SoftwareAGBuildAssets.git'
			}
		}
	}
}