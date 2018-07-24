pipeline {
	agent {
			node {
				label 'docker-swarm'
				customWorkspace '/home/saguser/workspace'
			}
		}
	environment{
		BRANCH_NAME = "master"
        REPOName="assets-${env.BUILD_NUMBER}"
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
		stage ('commit build assets to git') {
            steps{
                sshagent(credentials : ['AbhishekGupta1506GITVMMOSY07']) {
				dir('/home/saguser/workspace/SoftwareAGBuildAssets'){
					sh 'git init'
					sh 'git add .'
					sh 'git commit -am "pushing assets build automatically "'
					sh 'git push git+ssh://git@github.com/AbhishekGupta1506/SoftwareAGBuildAssets.git --all | true'
					}
                }
            }

        }
		stage ('Add GIT repo to CCE') {
			steps{
				dir('/home/saguser/SoftwareAG103/CommandCentral/client/bin'){
					sh './sagcc add repository assets git name=GitRepo location=https://github.com/AbhishekGupta1506/SoftwareAGBuildAssets.git credentials=NONE overwrite=true description=GitRepo -p manage'
					sh 'sleep 300'
				}
			}
		}
		stage ('Deploy assets to target TN runtime') {
			steps{
				dir('/home/saguser/SoftwareAG103/CommandCentral/client/bin'){
					sh './sagcc exec provisioning assets vmsiqa-abg03 GitRepo install runtimeComponentId=OSGI-IS_default-WmTN artifacts=TN:TNAssets -p manage'
				}
			}
		}
	}
}