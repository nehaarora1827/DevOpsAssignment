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
}
}
