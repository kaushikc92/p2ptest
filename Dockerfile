FROM golang:1.12.5-alpine

COPY ./host.go /go/src/app/
WORKDIR /go/src/app

RUN go get github.com/derekparker/delve/cmd/dlv
RUN go get github.com/libp2p/go-libp2p

CMD ["dlv", "debug", "--headless", "--listen=:2345", "--api-version=2"]
