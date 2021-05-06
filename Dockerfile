FROM python:3.7

# Organize folders in the container in a better way
# WORKDIR -- working directory
WORKDIR /fastapi-app

COPY requirements.txt .

RUN pip install -r requirements.txt

# COPY {local dir} {container dir}
COPY ./app ./app 

# entry point for our container 
CMD ["python", "./app/main.py"]