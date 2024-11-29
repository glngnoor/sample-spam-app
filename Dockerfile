FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py ./app.py
COPY model ./model

EXPOSE 8501

CMD ["streamlit", "run", "./app.py"]