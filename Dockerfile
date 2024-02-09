FROM python:3.8-alpine
WORKDIR /app
COPY . /app
COPY Scores.txt /app/Scores.txt
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP=MainScores.py
EXPOSE 5000
CMD ["python", "MainScores.py"]
