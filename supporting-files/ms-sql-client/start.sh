if [ $ACCEPT_EULA == 'YES' ] && [ ! $SA_PASSWORD == '' ]; then
	if ! [ -f /sql-server-installed ]; then
		/opt/mssql/bin/sqlservr-setup --accept-eula --set-sa-password
#		echo  "--accept-eula $ACCEPT_EULA --set-sa-password $SA_PASSWORD"
		touch /sql-server-installed
	fi
	/opt/mssql/bin/sqlservr
else
	echo "you must accept the eula by setting ACCEPT_EULA=YES and the SA_PASSWORD"
fi
