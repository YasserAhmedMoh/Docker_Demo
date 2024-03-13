FROM nginx

COPY script.sh /script.sh

CMD ["chmod", "+x", "/script.sh"]
