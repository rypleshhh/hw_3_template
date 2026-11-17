FROM python

WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
COPY app ./app
RUN mkdir -p app/data
CMD [ "python", "-m", "app.app" ]
