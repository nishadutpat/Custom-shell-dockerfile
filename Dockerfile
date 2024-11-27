FROM nginx
COPY c.sh /usr/local/bin/c.sh
RUN chmod +x /usr/local/bin/c.sh
EXPOSE 80
ENTRYPOINT ["/bin/bash", "-c", "/usr/local/bin/c.sh && nginx -g 'daemon off;'"]
