#!/bin/bash

if [ "$ACCEPT_EULA" == 'YES' ] && [ "$SA_PASSWORD" != '' ]; then
    if ! [ -f /sql-server-installed ]; then
	/opt/mssql/bin/sqlservr-setup --accept-eula --set-sa-password
	# echo  "--accept-eula $ACCEPT_EULA --set-sa-password $SA_PASSWORD"
	touch /sql-server-installed
    fi
    /opt/mssql/bin/sqlservr
else
    echo -e "ACCEPT_EULA was \"$ACCEPT_EULA\"\nSA_PASSWORD was \"$SA_PASSWORD\"\nIn order to run this container you must provide a SA_PASSWORD and set ACCEPT_EULA=YES as env vars passed to docker run."
fi
