FROM python:3.11-alpine
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
COPY Scores.txt /Scores.txt
ENV FLASK_APP=MainScores.py
EXPOSE 5000
CMD ["python", "/app.py"]
