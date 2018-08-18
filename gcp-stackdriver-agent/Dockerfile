FROM debian:jessie

# Name of the monitoring agent.
ENV AGENT_NAME='stackdriver-agent'

# Host that serves the repositories.
ENV REPO_HOST='packages.cloud.google.com'


RUN apt-get update && apt-get install curl ca-certificates --no-install-recommends -y && \
    echo 'deb http://packages.cloud.google.com/apt google-cloud-monitoring-jessie main' > /etc/apt/sources.list.d/google-cloud-monitoring.list && \
    curl --connect-timeout 5 -s -f "https://${REPO_HOST}/apt/doc/apt-key.gpg" | apt-key add - &&  apt-get -qq update && \
    apt-get install $AGENT_NAME --no-install-recommends -y 


COPY entrypoint.sh /entrypoint.sh
    
    
CMD [ "/entrypoint.sh" ]
