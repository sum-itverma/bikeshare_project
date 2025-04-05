# pull python base image
FROM python:3.10
# specify working directory
WORKDIR /bike_sharing_api
# copy application files
ADD . . 
# update pip
RUN pip install --upgrade pip
# install dependencies

RUN ls

RUN pwd

RUN pip install -r bike_sharing_api/requirements.txt
# expose port for application
EXPOSE 8001
# start fastapi application
CMD ["python", "app/main.py"]