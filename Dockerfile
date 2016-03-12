FROM centos

COPY src /tmp/src
RUN yum localinstall -y /tmp/src/*.rpm
RUN yum install -y libXext libXrender libXtst

RUN echo SetJavaHome /usr/java/default >> /opt/sqldeveloper/sqldeveloper/bin/sqldeveloper.conf

CMD sqldeveloper