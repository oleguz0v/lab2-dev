FROM alpine:3.21

RUN adduser -S user
USER user

WORKDIR /app
COPY --from=builder /app/main /app

CMD ["./main"]