FROM daocloud.io/library/mysql:5.7.11
COPY my.cnf /etc/mysql/my.cnf
EXPOSE 3306
#FROM mysql:5.7
COPY mysql.cnf /etc/mysql/conf.d/
RUN chmod 644 /etc/mysql/conf.d/mysql.cnf
#CMD ["service mysql start"]
