# Mon dockerfile
FROM  fedora:latest

RUN dnf -y update
RUN dnf -y install tar wget git

COPY Chinook_Sqlite.sqlite  /test
COPY example_requete.py  /test

WORKDIR /test

CMD ["python3","example_requete.py"]

