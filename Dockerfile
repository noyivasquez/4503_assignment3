 # our base image
 FROM alpine:3.5

 # Install python and pip
 RUN apk add --update py2-pip

 # install Python modules needed by the Python app
 COPY requirements.txt /mnt/c/users/noyi/week11/
 RUN pip install --no-cache-dir -r /mnt/c/users/noyi/week11/requirements.txt

 # copy files required for the app to run
 COPY app.py /mnt/c/users/noyi/week11/
 COPY templates/index.html C/mnt/c/users/noyi/week11/

 # tell the port number the container should expose
 EXPOSE 5000

 # run the application
 CMD ["python", "/mnt/c/users/noyi/week11/app.py"]