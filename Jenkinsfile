node {
	docker.image('microsoft/aspnetcore-build:2.0').inside('-u root') {
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
//			    echo 'Testing....'
//			    sh 'dotnet test -c Release'
	    }
	    stage('Publish') {
		echo 'Publishing....'
		sh 'dotnet publish -c Release'
	    }
	    stage('Deploy') {
		echo 'Deploying....'
	    }
	}
	
	stage('Docker Build') {
		docker.build("test")
	}
	stage('Docker Push') {
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
