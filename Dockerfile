FROM golang:1.8

WORKDIR /go/src/bingo
COPY . .

RUN export PATH=$PATH:$GOPATH/bin && \
    go get -d -v ./...


ENTRYPOINT ["make","dev"]

