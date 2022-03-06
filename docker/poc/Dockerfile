FROM alpine:latest
ENV PATH_HOME /home/ranveer
WORKDIR $PATH_HOME
LABEL maintainer="Ranveer Singh https://github.com/cseranveer"
ENV JENKINS_HOME $PATH_HOME/TOOLS/jenkins
RUN set -x \
    && sudo addgroup --system --gid 101 admingroup \
    && sudo adduser --create-home --base-dir $PATH_HOME --uid 1011 -g admingroup ranveer \
    && sudo apt-get update
USER ranveer
COPY entrypoint.sh / 
#overridden by docker run command
CMD ["echo", "Container Started"]
#appended in docker run command, NOT OVERRIDDEN
ENTRYPOINT ["sh entrypoint.sh"]
EXPOSE 80
# file at a url can be copied to destination
#ADD http://foo.com/bar.go $PATH_HOME
# volume file will be created at /var/lib/docker/volumes in host machine
VOLUME volume_cseranveer 
# will not be accessible inside container as ENV but can be used as placeholder in RUN
ARG ARG="ARG_EXAMPLE"
# Upon this image being used ad base for another image below trigger will run
ONBUILD RUN echo "Base image by cseranveer"
# To be implemented later
#HEALTHCHECK