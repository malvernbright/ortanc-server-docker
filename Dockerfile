FROM ubuntu:latest
RUN apt-get update && apt-get install -y orthanc
ENV ORTHANC_DB_HOST="postgres"
ENV ORTHANC_DB_USERNAME="orthanc"
ENV ORTHANC_DB_PASSWORD="your_password"
ENV ORTHANC_DB_NAME="orthanc"
ENV PATH $PATH:/usr/local/bin
EXPOSE 8042
CMD ["/usr/local/bin/orthanc", "-v", "info"]
