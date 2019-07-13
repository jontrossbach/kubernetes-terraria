FROM centos
WORKDIR /opt
RUN curl -O http://terraria.org/server/terraria-server-1353.zip && \
yum -y install unzip && \
unzip terraria-server-1353.zip && \
chmod +x /opt/1353/Linux/TerrariaServer.bin.x86_64 && \
/opt/1353/Linux/TerrariaServer.bin.x86_64
