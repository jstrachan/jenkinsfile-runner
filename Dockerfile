FROM jenkinsxio/jenkinsx:0.0.26

COPY  app/target/appassembler /app

ENTRYPOINT ["/app/bin/jenkinsfile-runner", \
            "-w", "/var/jenkins_home",\
            "-p", "/usr/share/jenkins/ref/plugins",\
            "-f", "/home/jenkins/workspace"]
