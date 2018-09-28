FROM golang:latest

LABEL maintainer="Sadik Ay <sadikay2@gmail.com>"

ENV GOBIN /go/bin
ENV GIN_MODE release

RUN mkdir /go-app
RUN mkdir /go/src/go-app

ADD . /go/src/go-app
RUN mkdir /var/db

WORKDIR /go/src/go-app
RUN go get -u github.com/golang/dep/...

RUN dep ensure
RUN go build -o /go-app/main .

CMD ["/go-app/main"]

EXPOSE 80
