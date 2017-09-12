#!/usr/bin/env sh
openssl req -new -x509 -days 9999 -config config/ca.cnf -keyout out/ca-key.pem -out out/ca-crt.pem
