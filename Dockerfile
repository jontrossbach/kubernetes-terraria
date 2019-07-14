FROM centos
WORKDIR /opt
RUN curl -O http://terraria.org/server/terraria-server-1353.zip && \
yum -y install unzip && \
unzip terraria-server-1353.zip && \
chmod +x /opt/1353/Linux/TerrariaServer.bin.x86_64 && \
chmod +x /opt/1353/Linux/TerrariaServer.exe
COPY serverconfig.txt /opt/1353/Linux/
EXPOSE 7777/tcp
ENTRYPOINT /opt/1353/Linux/TerrariaServer.bin.x86_64 -config /opt/1353/Linux/serverconfig.txt 
