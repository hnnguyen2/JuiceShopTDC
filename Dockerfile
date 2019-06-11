FROM frekele/gradle:2.4-jdk8

RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main" > /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

RUN mkdir /app
WORKDIR /app

RUN git clone --depth=1 https://github.com/nVisium/MoneyX.git .

RUN gradle bootRepackage

ADD https://download.immun.io/internal/java/immunio-3.1.1.jar immunio-3.1.1.jar

EXPOSE 8080

CMD java -javaagent:immunio-3.1.1.jar -jar build/libs/moneyx.jar

ENV IMMUNIO_LOG_FILE=STDERR
