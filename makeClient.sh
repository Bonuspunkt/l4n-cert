#!/usr/bin/env sh
# generate client cert
openssl genrsa -out client-key.pem 4096
# generate sign request
openssl req -new -config config/client.cnf -key client-key.pem -out client-csr.pem
# sign
openssl x509 -req -extfile config/client.cnf -days 999 -passin "pass:password" -in client-csr.pem -CA ca-crt.pem -CAkey ca-key.pem -CAcreateserial -out client-crt.pem
