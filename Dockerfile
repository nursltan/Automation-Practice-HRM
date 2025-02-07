FROM python:3.12.0a4-alpine3.17

# Обновление репозиториев Alpine
RUN echo "https://dl-4.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
    echo "https://dl-4.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories && \
    apk update

# Установка необходимых пакетов (Chromedriver, Java, curl, tar, gcompat для glibc)
RUN apk add --no-cache \
    chromium \
    chromium-chromedriver \
    tzdata \
    openjdk11-jre \
    curl \
    tar \
    bash \
    gcompat  # Устанавливает совместимость с glibc

# Установка Allure CLI с проверкой существования
RUN curl -o allure-2.13.8.tgz -Ls https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.13.8/allure-commandline-2.13.8.tgz && \
    tar -zxvf allure-2.13.8.tgz -C /opt/ && \
    rm -f /usr/bin/allure && ln -s /opt/allure-2.13.8/bin/allure /usr/bin/allure && \
    rm allure-2.13.8.tgz

# Установка рабочего каталога
WORKDIR /usr/workspace

# Копирование зависимостей
COPY ./requirements.txt .

# Установка зависимостей Python
RUN pip3 install --no-cache-dir -r requirements.txt
