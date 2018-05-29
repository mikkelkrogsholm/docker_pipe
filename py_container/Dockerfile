FROM python:3.6.5

RUN easy_install pandas

COPY script.py .

RUN chmod +x script.py

CMD ["python","script.py"]
