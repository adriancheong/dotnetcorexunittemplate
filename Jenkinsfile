node {
    stage('Checkout') {
        checkout scm
    }
    stage('Build') {
        echo 'Building....'
		sh 'dotnet restore'
		//sh 'dotnet build DotnetCoreXUnitProjectTemplate.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}'
	        sh 'dotnet build'
    }
    stage('Test') {
	    steps {
		    echo 'Testing....'
		    sh 'dotnet test'
	    }	    
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
