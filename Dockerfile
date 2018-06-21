FROM openjdk

# https://medium.com/@mccode/processes-in-containers-should-not-run-as-root-2feae3f0df3b
RUN groupadd -g 999 springboot && \
    useradd -r -u 999 -g springboot springboot
USER springboot

COPY "./build/libs/oc-0.0.1-SNAPSHOT.jar" /usr/src/app/

WORKDIR /usr/src/app

EXPOSE 8080

CMD ["java", "-jar", "oc-0.0.1-SNAPSHOT.jar"]