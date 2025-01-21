FROM apache/airflow:2.10.4-python3.10

COPY requirements.txt /opt/airflow/

USER root
RUN apt-get update && apt-get install -y gcc python3-dev

USER airflow

RUN pip3 install --no-cache-dir -r /opt/airflow/requirements.txt