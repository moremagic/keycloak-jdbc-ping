FROM jboss/keycloak:latest

ENV DB_VENDOR POSTGRES

ADD tools /usr/bin
RUN chmod +x /usr/bin/getAddress.py
RUN chmod +x /usr/bin/start.sh

ADD cli /opt/jboss/keycloak/cli

RUN cd /opt/jboss/keycloak && bin/jboss-cli.sh --file=cli/postgres-ha.cli 
RUN rm -rf /opt/jboss/keycloak/standalone/configuration/standalone_xml_history

EXPOSE 8080 9990 7600 57600

ENTRYPOINT [ "/usr/bin/start.sh" ]
CMD ["-b", "0.0.0.0", "--server-config", "standalone-ha.xml"]
