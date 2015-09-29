FROM python:3.4-onbuild
EXPOSE 8000
VOLUME /usr/src/app/static
# Add Environment Variables

ENV DEBUG=False
ENV SECRET_KEY=5(15ds+i2+%ik6z&!yer+ga9m=e%jcqiz_5wszg)r-z!2--b2d
ENV DB_NAME=postgres
ENV DB_USER=postgres
DB_PASS=postgres
ENV DB_SERVICE=postgres
ENV DB_PORT=5432


CMD ["/usr/local/bin/gunicorn", "-w", "2", "-b", ":8000", "app:app"]
