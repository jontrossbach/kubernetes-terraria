FROM centos
WORKDIR /opt
RUN curl -O http://terraria.org/server/terraria-server-1353.zip
RUN yum -y install unzip
RUN unzip terraria-server-1353.zip
RUN chmod +x /opt/1353/Linux/TerrariaServer.bin.x86_64
RUN /opt/1353/Linux/TerrariaServer.bin.x86_64
