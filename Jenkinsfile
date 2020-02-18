node {
 try  {
 notify('Infrasturcture Updation Identified') 
	   stage('Git-Checkout') {
   git 'https://github.com/RizwanaParveen/Ec2-301.git'
  }

    
  stage('Prod-Infra') {
	  notify ('waiting for your production approval')
	  input 'proceed with prod?'
      sh label: 'Initializing Terraform', script: 'terraform init'
      sh label: 'Verifying the Infra', script: 'terraform plan -out=plan'
 sh label:'Creating Infra for prod', script:'terraform apply plan'
 notify('Infrastructure created in Prod')  
 
  }
notify('Job Completed')   
} catch (err) {
  notify("Error ${err}")
  currentBuild.result = 'FAILURE'
}
}



def notify(status){
    emailext (
	to: "rizwanaparveen64@gmail.com",
	subject: "${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
	 body: """<p>${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
	<p>Check console output at <a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a></p>""",
		)
	}
