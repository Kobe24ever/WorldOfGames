FROM python:3.8-alpine
WORKDIR /app
COPY . /app
COPY Scores.txt /app/Scores.txt
COPY chromedriver /usr/bin/ps
RUN chmod 777 Scores.txt
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=MainScores.py
EXPOSE 5000
CMD ["flask", "run", "--host", "127.0.0.1", "--port", "5000"]
