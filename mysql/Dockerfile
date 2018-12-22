FROM mysql:5.7.24
COPY my.cnf /etc/mysql/my.cnf
EXPOSE 3306
COPY mysql.cnf /etc/mysql/conf.d/
RUN chmod 644 /etc/mysql/conf.d/mysql.cnf
