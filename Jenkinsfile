node {
    stage('Checkout') {
        checkout scm
    }
    stage('Build') {
        echo 'Building....'
		sh 'nuget restore DotnetCoreXUnitProjectTemplate.sln'
		bat "\"${tool 'MSBuild'}\" DotnetCoreXUnitProjectTemplate.sln /p:Configuration=Release /p:Platform=\"Any CPU\" /p:ProductVersion=1.0.0.${env.BUILD_NUMBER}"
    }
    stage('Test') {
        echo 'Building....'
    }
    stage('Deploy') {
        echo 'Deploying....'
    }
}
