# Use an official python runtime docker image
FROM python:3.9-slim
# set the working directory inside the container
WORKDIR /usr/src/app
# copy the requirements file into the container
COPY requirements.txt ./

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#copy the rest of the application code into the container
COPY . .
# expose the port the app runs on
EXPOSE 5000
#define the command to run the app
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000" ]

