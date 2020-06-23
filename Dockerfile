FROM node:8.14.1

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y vim git mc

WORKDIR /home/bower
COPY /. /home/bower

RUN npm -y install -g http-server grunt-cli bower && \
    echo '{ "allow_root": true }' > /root/.bowerrc
RUN adduser --disabled-login --gecos '' bower

RUN npm install grunt
RUN npm install grunt-jscs-checker
RUN npm install grunt-bower-task
RUN npm install grunt-borschik
RUN npm install grunt-csso
RUN npm install grunt-contrib-jshint
RUN npm install grunt-contrib-htmlmin
RUN npm install grunt-contrib-watch --save-dev
RUN bower install --force --config.interactive=false
RUN grunt 

#На случай важных переговоров с npm
#RUN chmod 777 -R /usr/local/lib/node_modules
#RUN mv /usr/local/lib/node_modules /usr/local/lib/node_modules.tmp \
  #&& mv /usr/local/lib/node_modules.tmp /usr/local/lib/node_modules 

CMD http-server .

EXPOSE 8080