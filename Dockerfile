FROM python

WORKDIR /app
COPY app ./app
RUN pip install --no-cache-dir -r app/requirements.txt
RUN mkdir -p app/data
CMD [ "python", "-m", "app.app" ]
