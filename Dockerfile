FROM golang:1.6

# Install revel
RUN go get github.com/revel/revel
RUN go get github.com/revel/cmd/revel

# Settings
EXPOSE 9000
VOLUME ${GOPATH}/src/mygo
WORKDIR ${GOPATH}/src/mygo

CMD revel run mygo
