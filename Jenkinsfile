import java.text.SimpleDateFormat

node {
	stage('Checkout') {
		checkout scm
		def ressponse = input(message:'Hello World!',
		      parameters:[
					[$class: 'TextParameterDefinition', name: 'Text', defaultValue: 'Default Text', description: 'Text Desc'],
			      		booleanParam(name: 'Bool', defaultValue: true, description: 'Boolean Param'),
			      		choice(name: 'Choice', choices: ['A','B','C','D','E'], description: 'Choice'),
					[$class: 'DateParameterDefinition', name: 'Date', dateFormat: 'dd-MM-yyyy', defaultValue: '13-11-1982', description: 'This field requires the Date Parameter Plugin Installed']
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
