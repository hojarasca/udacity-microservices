FROM python:3.7.3-stretch


# Create a working dir
WORKDIR /app

# Move requirements
COPY ./requirements.txt ./

# Instal dependencies
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt


## Move the app and the model data
COPY ./app.py ./
COPY ./model_data/* ./model_data/

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "app.py"]
