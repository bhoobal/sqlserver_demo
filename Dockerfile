FROM microsoft/mssql-server-linux:latest

# Install packages
RUN apt-get -y update  && apt-get install -y

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

RUN chmod +x /usr/src/app/import-data.sh

EXPOSE 1433
ENTRYPOINT [ "/bin/bash" ]
#CMD /bin/bash

# ./entrypoint.sh
