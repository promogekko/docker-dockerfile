# Mon dockerfile
FROM  fedora:latest

RUN dnf -y update
RUN dnf -y install tar wget git

COPY Chinook_Sqlite.sqlite  /
COPY example_requete.py  /

WORKDIR /

CMD ["python3","example_requete.py"]

