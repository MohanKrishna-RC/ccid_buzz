FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /ccid_buzz/requirements.txt
RUN pip install -r /ccid_buzz/requirements.txt
COPY app.py /ccid_buzz
COPY buzz /ccid_buzz/buzz
CMD python /ccid_buzz/app.py