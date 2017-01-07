FROM fedora

RUN curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/msprod.repo
RUN dnf install -y mssql-tools

#LABEL RUN-INTERACTIVE /usr/bin/docker run -it -v \${DATADIR}:/var/opt/mssql/data:rw,z -v \${LOGDIR}:/var/opt/mssql/log:rw,z -e# ACCEPT_EULA=\${ACCEPT_EULA} -e SA_PASSWORD=\${SA_PASSWORD} IMAGE /bin/bash
#LABEL RUN /usr/bin/docker run -d -t -v \${DATADIR}:/var/opt/mssql/data:rw,z -v \${LOGDIR}:/var/opt/mssql/log:rw,z -e ACCEPT_EULA=\${ACCEPT_EULA} -e SA_PASSWORD=\${SA_PASSWORD} IMAGE

#ENV SA_PASSWORD
#ENV ACCEPT_EULA

#CMD ["sqlcmd "]

