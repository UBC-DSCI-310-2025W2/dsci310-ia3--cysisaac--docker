FROM rocker/rstudio:4.2.2

WORKDIR /app

COPY . /app

RUN chmod +x /app/list.sh

CMD ["/app/list.sh"]

