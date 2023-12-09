docker run -d \
	-p 3307:3306 \
	--mount type=bind,source=$(pwd)/../csv,target=/srv/csv \
	-v vol-sql-demo:/var/lib/mysql \
	--name cont-mysql \
	--env MYSQL_ROOT_PASSWORD=mysql \
	--network network51-proj2 \
	sql --local-infile=1 --secure-file-priv=''

