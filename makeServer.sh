#!/usr/bin/env sh
# generate server cert
openssl genrsa -out server-key.pem 4096
# generate sign request
openssl req -new -config config/server.cnf -key server-key.pem -out server-csr.pem
# sign
openssl x509 -req -extfile config/server.cnf -days 999 -passin "pass:password" -in server-csr.pem -CA ca-crt.pem -CAkey ca-key.pem -CAcreateserial -out server-crt.pem
