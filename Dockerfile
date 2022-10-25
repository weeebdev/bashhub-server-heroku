FROM golang:1.18

RUN GO111MODULE=off go get -u github.com/nicksherron/bashhub-server

CMD bashhub-server -a http://0.0.0.0:$PORT --db "$DATABASE_URL"
