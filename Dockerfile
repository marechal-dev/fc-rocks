FROM golang:alpine AS build

WORKDIR /usr/app

COPY . .

RUN go build -o bin/main main.go

FROM scratch

WORKDIR /usr/app

COPY --from=build /usr/app/bin/main .

CMD ["./main"]
