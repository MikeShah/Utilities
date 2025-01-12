# Initial page that helped set this up
# https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-service-other-languages

# Helpful guide on Docker here
# https://www.docker.com/blog/docker-best-practices-choosing-between-run-cmd-and-entrypoint/
# RUN -- used for setting things up
# CMD -- default executable

From ubuntu:24.04
# The current working directory
WORKDIR /mywebapp
# COPY of stuff to the current working directory?
COPY . .

# Set the environment variable for Cloud Run to bind to port 8080
ENV PORT 8080
# Provides soem documentation as to the port we're allowing access to.
# Note: I believe you can also specify tcp/udp here as well if relevant.
EXPOSE 8080

# Get some tools
RUN apt update -y
RUN apt-get install wget -y

# Build Dub from source
RUN wget https://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
RUN apt-get update --allow-insecure-repositories
RUN apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring
RUN apt-get update -y && apt-get install -y dmd-compiler dub 
# Install version 14 of the Gnu D Compiler
RUN apt-get install gdc-14 -y

# Some debugging
# RUN pwd
# RUN echo 'listing /'
# RUN ls /
 RUN echo 'listing /mywebapp'
 RUN ls /mywebapp
# RUN echo 'listing /home/ubuntu/'
# RUN ls /home/ubuntu/
# RUN echo 'listing /usr/'
# RUN ls /usr/

# Do the build of the sources that we copied over.
RUN dub build --compiler=gdc-14
RUN echo 'listing /mywebapp'
RUN ls /mywebapp
# The actual command to run when the container is started
# Note: It's important for this particular setup to listen on '8080'
#       as that is what google cloud run suggests is optimal
# Note: I tried this previously with 'CMD' but that did not work.
#ENTRYPOINT ["./dweb -- 8080"]
ENTRYPOINT ["./dweb"]
CMD ["8080"]
