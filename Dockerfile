FROM iron/java:1.8-dev

COPY maven /usr/local/

COPY sample-app /usr/src/app

WORKDIR /usr/src/app

ENV tests -Dtest=*

ENTRYPOINT mvn clean test $tests
