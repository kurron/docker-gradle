# This image's purpose is simply to make Gradle available to the user, alleviating her from any Gradle details.  It is expected
# that this will be a base image for refined Gradle images.

# Oracle JDK 8
FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

# export meta-data about this container
ENV KURRON_GRADLE_VERSION 2.3

# copy the Gradle pieces into the container
COPY gradle /opt/gradle/gradle/
COPY gradlew /opt/gradle/

# create a mount point where the source files will be
VOLUME ["/pwd"]

# set the working directory to where the source files are
WORKDIR /pwd

# create a mount point to the user's home directory
VOLUME ["/home"]

ENTRYPOINT ["/opt/gradle/gradlew"]
