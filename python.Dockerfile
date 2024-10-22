FROM python:3.14

WORKDIR /data/newDND

#COPY ./requirements.txt /data/newDND/requirements.txt

#RUN pip install --no-cache-dir --upgrade -r requirements.txt

RUN pip install fastapi
RUN pip install uvicorn
RUN pip install psycopg2-binary

COPY ./code /data/newDND

CMD ["fastapi", "run", "main.py", "--port", "8000"]