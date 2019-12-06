FROM python:3

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

RUN mkdir /myworkdir
WORKDIR /myworkdir
copy ./ ./

CMD ["python3", "worlddatatable.py"]