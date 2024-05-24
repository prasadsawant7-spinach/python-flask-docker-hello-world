FROM python:3.10-alpine

RUN mkdir /app

WORKDIR /app

COPY . .

RUN python -m venv venv

RUN source venv/bin/activate

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]