FROM python:2.7.13
RUN apt-get update && apt-get install -y \
 git
RUN git clone https://github.com/SpiderLabs/Responder.git
WORKDIR /Responder
EXPOSE 80
EXPOSE 389
EXPOSE 1433
EXPOSE 3141
EXPOSE 587
EXPOSE 139
EXPOSE 445
EXPOSE 21
EXPOSE 110
EXPOSE 25
#ENTRYPOINT ["Responder"]
CMD ["./Responder.py","-I","eth0"]
# Run with docker run -it -p 192.168.1.25:21-3141:21-3141 responder


