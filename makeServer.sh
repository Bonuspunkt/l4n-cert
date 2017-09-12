#!/usr/bin/env sh
# generate server cert
openssl genrsa -out out/server-key.pem 4096
# generate sign request
openssl req -new -config config/server.cnf -key out/server-key.pem -out out/server-csr.pem
# sign
openssl x509 -req -extfile config/server.cnf -days 999 -passin "pass:password" -in out/server-csr.pem -CA out/ca-crt.pem -CAkey out/ca-key.pem -CAcreateserial -out out/server-crt.pem
