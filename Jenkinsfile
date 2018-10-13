node {
	docker.image('microsoft/aspnetcore-build:2.0').inside('-u root') {
	    stage('Checkout') {
		checkout scm
	    }
	    stage('Build') {
		    sh 'dotnet restore'
		    sh 'dotnet build -c Release'
	    }
	    stage('Test') {
//			    echo 'Testing....'
//			    sh 'dotnet test -c Release'
	    }
	    stage('Publish') {
		sh 'dotnet publish -c Release'
	    }
			stage('Docker Buildz') {
		image = docker.build("adriancheong/${JOB_NAME}:${BUILD_NUMBER}".toLowerCase())
	}
	}
	
	def image
	stage('Docker Build') {
		image = docker.build("adriancheong/${JOB_NAME}:${BUILD_NUMBER}".toLowerCase())
	}
	stage('Docker Push') {
		docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
			image.push()
		}
	}
/*	
    stage('Checkout') {
        checkout scm
    }
    stage('Build') {
        echo 'Building....'
		sh 'dotnet restore'
		//sh 'dotnet build DotnetCoreXUnitProjectTemplate.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}'
	        sh 'dotnet build -c Release'
    }
    stage('Test') {
		    echo 'Testing....'
		    sh 'dotnet test -c Release'	    
    }
    stage('Deploy') {
        echo 'Deploying....'
    }*/
}
