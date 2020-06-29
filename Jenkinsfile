pipeline
{
agent any
tools
{
   maven 'MVN_HOME'
}
stages
{
    stage('Checkout')
   {
      steps
     {
        checkout scm
     }
   }
    stage('Build')
   {
      steps
       {
         bat "mvn clean install"
       }
   }
   stage('Sonar Analysis')
   {
      steps
      {
         echo "Sonar"
         withSonarQubeEnv("local sonar")
         {
            bat "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar"
         }
      }
   }
   stage('Uploading to Artifactory')
   {
      steps
      {
         rtMavenDeployer(
            id: 'deployer',
            serverId: 'Neha1234@artifactory',
            releaseRepo: 'DevOpsAssignment_Neha',
            snapshotRepo: 'DevOpsAssignment_Neha'
         )
         rtMavenRun(
            pom: 'pom.xml',
            goals: 'clean install',
            deployerId: 'deployer'
            )
         rtPublishBuildInfo(
            serverId: 'Neha1234@artifactory',
            )
      }
   }
}
}
