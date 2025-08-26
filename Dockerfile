FROM alpine

RUN apk add --no-cache g++ make

WORKDIR /app

COPY project.cpp /app/project.cpp

RUN g++ -o myapp project.cpp

CMD ["./myapp"]