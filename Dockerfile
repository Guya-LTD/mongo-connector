FROM guyaltd/python:mongo-connector

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Workdir
ENV WORK_DIR /usr/src/app
WORKDIR ${WORK_DIR}

COPY . .

CMD mongo-connector -c config.json 