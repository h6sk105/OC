pipeline {
  agent {
    docker {
      image 'ubuntu:latest'
      args '--privileged --user 0'
    }
  }
  stages {
    stage('update') {
      steps {
        sh 'apt-get update -y'
      }
    }

    stage('wget') {
      steps {
        sh 'apt-get install wget -y'
      }
    }

    stage('download') {
      steps {
        sh 'wget -P /tmp/ https://github.com/teren-ukr/System_administration/raw/main/script_caunter-1.0-1.x86_64.rpm'
      }
    }

    stage('install') {
      steps {
        sh 'rpm -ivh /tmp/script_caunter-1.0-1.x86_64.rpm'
      }
    }

    stage('use script') {
      steps {
        sh 'chmod +x /tmp/script_caunter.sh && /tmp/script_caunter.sh'
      }
    }
  }
}
