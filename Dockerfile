FROM golang:1.11
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN export GOMODULES=on
RUN go mod download
RUN go build -o main ./main.go
CMD ["/app/main"]
