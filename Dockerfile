FROM postgres

RUN apt-get update -y && apt-get install -y eatmydata

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["postgres"]
