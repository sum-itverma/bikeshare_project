# pull python base image
FROM python:3.10

# specify working directory
WORKDIR /bike_sharing_api

# copy application files (including requirements.txt)
COPY bike_sharing_api/. .

RUN ls -l /bike_sharing_api

RUN ls -l /bike_sharing_api/app

RUN ls -l /bike_sharing_api/dist

# update pip
RUN pip install --upgrade pip

# install dependencies
RUN pip install -r requirements.txt

# expose port for application
EXPOSE 8001

# start fastapi application
CMD ["python", "app/main.py"]
