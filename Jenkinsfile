node {
    stage('Build') {
        echo 'Building....'
		bat 'nuget restore DotnetCoreXUnitProjectTemplate.sln'
		//bat "\"${tool 'MSBuild'}\" DotnetCoreXUnitProjectTemplate.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
    }
    stage('Test') {
        echo 'Building....'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
