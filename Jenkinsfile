node {
 try  {
	stage('Git-Checkout') {
   checkout([$class: 'GitSCM', branches: [[name: 'origin/feature/*']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/RizwanaParveen/Ec2-301.git']]])
  }
    
  stage('Terraform QA ') {
      sh label: 'Initializing Terraform', script: 'terraform init'
      sh label: 'Initializing Terraform', script: 'terraform validate'
      sh label: 'Verifying the Infra', script: 'terraform plan -out=plan'
  }
} catch (err) {
  notify("Error ${err}")
  currentBuild.result = 'FAILURE'
}
}

