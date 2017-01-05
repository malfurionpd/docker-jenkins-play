FROM 		jenkins

MAINTAINER 	malfurionpd <343753091@qq.com>

ENV         ACTIVATOR_VERSION 1.3.10


# INSTALL TYPESAFE ACTIVATOR
RUN         cd /tmp && \
            wget http://downloads.typesafe.com/typesafe-activator/$ACTIVATOR_VERSION/typesafe-activator-$ACTIVATOR_VERSION.zip && \
            unzip typesafe-activator-$ACTIVATOR_VERSION.zip -d /usr/local && \
            mv /usr/local/activator-$ACTIVATOR_VERSION /usr/local/activator && \
            chmod a+x /usr/local/activator/activator && \
            rm typesafe-activator-$ACTIVATOR_VERSION.zip

ENV PATH $PATH:/usr/local/activator
