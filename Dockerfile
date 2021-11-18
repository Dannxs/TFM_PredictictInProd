FROM python:3.8.12-buster

COPY TaxiFareModel /TaxiFareModel
COPY requirements.txt /requirements.txt
COPY model.joblib /model.joblib
COPY api /api
COPY /home/danxs/code/Dannxs/gcp/spartan-tesla-328010-fa5283fe9ec6.json /spartan-tesla-328010-fa5283fe9ec6.json

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT