import java.text.SimpleDateFormat

node {
	stage('Checkout') {
		checkout scm
		def ressponse = input(message:'Hello World!',
		      parameters:[
					[$class: 'TextParameterDefinition', name: 'TextParameterDefinition', defaultValue: 'Default Text', description: 'TextParameterDefinition'],
			      		booleanParam(name: 'booleanParam', defaultValue: true, description: 'booleanParam'),
			      		choice(name: 'choice', choices: ['A','B','C','D','E'], description: 'choice'),
					[$class: 'DateParameterDefinition', name: 'DateParameterDefinition', dateFormat: 'dd-MM-yyyy', defaultValue: '13-11-1982', description: 'DateParameterDefinition. This field requires the Date Parameter Plugin Installed'],
			      		[$class: 'ScriptSelectionTaskDefinition']
				 ])
	}
	
	docker.image('microsoft/aspnetcore-build:2.0').inside('-u root') {
		stage('Build') {
			sh 'dotnet restore'
			sh 'dotnet build -c Release'
		}
		stage('Test') {
			sh 'dotnet test -c Release'
		}
		stage('Publish') {
			sh 'dotnet publish -c Release'
		}
	}
	
	def image
	stage('Docker Build') {
		image = docker.build("adriancheong/${JOB_NAME}:${BUILD_NUMBER}".toLowerCase())
	}
	stage('Docker Push') {
//		docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
//			image.push()
//		}
	}
}
