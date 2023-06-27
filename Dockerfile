FROM metabase/metabase:latest

WORKDIR /app

COPY docker-entrypoint.sh .

RUN ["chmod", "+x", "/app/docker-entrypoint.sh"]

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]