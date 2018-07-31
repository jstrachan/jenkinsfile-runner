FROM jenkinsxio/jenkinsx:SNAPSHOT-PR-33-3

COPY  app/target/appassembler /app

ENTRYPOINT ["/app/bin/jenkinsfile-runner", \
            "-w", "/var/jenkins_home",\
            "-p", "/usr/share/jenkins/ref/plugins",\
            "-f", "/workspace"]
