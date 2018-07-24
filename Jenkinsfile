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
				sh 'git clone https://github.com/AbhishekGupta1506/SoftwareAGAssets.git'
			}
		}
		stage('checkout build Assets') {
			steps {
				sh 'git clone https://github.com/AbhishekGupta1506/SoftwareAGBuildAssets.git'
			}
		}
		stage('Build Assets using ABE') {
			steps {
				dir('/home/saguser/SoftwareAG103/common/AssetBuildEnvironment/bin/'){
					sh './build.sh'
				}
			}
		}
		stage('commit build assets to git') {
			steps {
				dir('/home/saguser/workspace/SoftwareAGBuildAssets'){
					sh 'git init'
					sh 'git add .'
					sh 'git commit -am "pushing assets build automatically"'
					sh 'git push https://AbhishekGupta1506:Siqa28011506@github.com/AbhishekGupta1506/SoftwareAGBuildAssets.git --all | true'
				}
			}
		}
	}
}