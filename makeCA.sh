#!/usr/bin/env sh
openssl req -new -x509 -days 9999 -config config/ca.cnf -keyout ca-key.pem -out ca-crt.pem
