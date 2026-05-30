FROM tomcat:9-jre8-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

# WAR будет скопирован из volume на этапе запуска контейнера
# Создаём точку входа, которая сначала копирует WAR, потом запускает Tomcat
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["catalina.sh", "run"]
