FROM python:3
WORKDIR /usr/src/app
COPY . .
RUN apt-get update
RUN pip install Flask
CMD ["echo_app.py"]
ENTRYPOINT ["python3"]
