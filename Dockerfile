FROM ubuntu:18.04

RUN apt update && apt install tomcat9 -y

# Создаём папку temp
RUN mkdir -p /usr/share/tomcat9/temp

# Указываем переменные окружения, чтобы Tomcat знал, где брать конфиги и библиотеки
ENV CATALINA_HOME=/usr/share/tomcat9
ENV CATALINA_BASE=/var/lib/tomcat9

EXPOSE 8080

# Копируем index.html в ROOT-приложение
ADD index.html /var/lib/tomcat9/webapps/ROOT/

# Запуск
CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]

