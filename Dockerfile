# Використання базового образу Ubuntu
FROM ubuntu:latest

# Оновлення списку пакетів та встановлення Apache2
RUN apt-get update && apt-get install -y apache2

# Вказання, який порт буде відкритий для веб-сервера Apache2
EXPOSE 80

# Команда, яка буде виконана при запуску контейнера
CMD ["apache2ctl", "-D", "FOREGROUND"]

