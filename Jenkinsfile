import java.text.SimpleDateFormat
import ac.globals.Engine

Engine e = new Engine(this)

def Build = {
	sh 'dotnet restore'
	sh 'dotnet build -c Release'
	sh 'dotnet publish -c Release'
}

e.Checkout()
e.DockerBuild('microsoft/aspnetcore-build:2.0', Build)
e.DockerTest('microsoft/aspnetcore-build:2.0', {sh 'dotnet test -c Release'})


	/*docker.image('microsoft/aspnetcore-build:2.0').inside('-u root') {
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
	}*/
	
	def image
	//stage('Docker Build') {
	//	image = docker.build("adriancheong/${JOB_NAME}:${BUILD_NUMBER}".toLowerCase())
	//}
	stage('Docker Push') {
//		docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
//			image.push()
//		}
	}





/*
		def ressponse = input(message:'Hello World!',
		      parameters:[
					[$class: 'TextParameterDefinition', name: 'TextParameterDefinition', defaultValue: 'Default Text', description: 'TextParameterDefinition'],
			      		booleanParam(name: 'booleanParam', defaultValue: true, description: 'booleanParam'),
			      		choice(name: 'choice', choices: ['A','B','C','D','E'], description: 'choice'),
					[$class: 'DateParameterDefinition', name: 'DateParameterDefinition', dateFormat: 'dd-MM-yyyy', defaultValue: '13-11-1982', description: 'DateParameterDefinition. This field requires the Date Parameter Plugin Installed'],
			      		string(name: 'string', defaultValue: 'Default string', description: 'string description'),
			      		text(name: 'text', defaultValue: 'Default text', description: 'text description'),
			      		password(name: 'password', defaultValue: '', description: 'password description')
				 ],
				submitter: 'admin',
			      	submitterParameter: 'theSubmitter')

*/
