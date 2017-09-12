#!/usr/bin/env sh
# generate client cert
openssl genrsa -out out/client-key.pem 4096
# generate sign request
openssl req -new -config config/client.cnf -key out/client-key.pem -out out/client-csr.pem
# sign
openssl x509 -req -extfile config/client.cnf -days 999 -passin "pass:password" -in out/client-csr.pem -CA out/ca-crt.pem -CAkey out/ca-key.pem -CAcreateserial -out out/client-crt.pem
