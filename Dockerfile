
FROM debian
RUN apt-get update && apt-get install -y chkconfig default-jre alien

ADD http://download.datameer.com/trial/Datameer-5.11/Datameer-5.11.2/datameer_apache_2.6.0-5.11.2-1.noarch.rpm /opt/datameer.rpm 

RUN alien -i "/opt/datameer.rpm" --scripts && su datameer


ADD start.sh /opt/start.sh
CMD  /opt/start.sh
