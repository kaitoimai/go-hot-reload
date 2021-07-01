FROM golang:1.16-buster

WORKDIR /go/src/app

COPY ./go.mod .
COPY ./go.sum .

# 依存ライブラリをダウンロード
RUN go mod download

# ホットリロードの為、cosmtrek/airをインストール
RUN go get -u github.com/cosmtrek/air

COPY . .
