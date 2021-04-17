#!/bin/sh

[ -f /run/secrets/cfssl_authkey ]  || { echo "/run/secrets/cfssl_authkey is required but not found"; exit 1; }
[ -f /run/secrets/mysql_password ] || { echo "/run/secrets/mysql_password is required but not found"; exit 1; }
[ -f /run/secrets/ca_int_key ]     || { echo "/run/secrets/ca_int_key is required but not found"; exit 1; }
[ -f /srv/cfssl/cfssl.json.in ]    || { echo "/srv/cfssl/cfssl.json.in is required but not found"; exit 1; }
[ -f /srv/cfssl/dbconfig.json.in ] || { echo "/srv/cfssl/dbconfig.json.in is required but not found"; exit 1; }
[ -f /srv/cfssl/ca-int.pem ]       || { echo "/srv/cfssl/ca-int.pem is required but not found"; exit 1; }
[ -f /srv/cfssl/ca.pem ]           || { echo "/srv/cfssl/ca.pem is required but not found"; exit 1; }

AUTHKEY="$(cat /run/secrets/cfssl_authkey)"
MYSQL_PASSWORD="$(cat /run/secrets/mysql_password)"

sed "s/{{AUTHKEY}}/${AUTHKEY}/" /srv/cfssl/cfssl.json.in > /srv/cfssl/cfssl.json
sed "s/{{MYSQL_USER}}/${MYSQL_USER:-}/; s/{{MYSQL_DATABASE}}/${MYSQL_DATABASE:-}/; s/{{MYSQL_HOST}}/${MYSQL_HOST:-}/; s/{{MYSQL_PASSWORD}}/${MYSQL_PASSWORD}/" /srv/cfssl/dbconfig.json.in > /srv/cfssl/dbconfig.json

CFSSL_LISTEN_ADDRESS=${CFSSL_LISTEN_ADDRESS:-0.0.0.0}
CFSSL_LISTEN_PORT=${CFSSL_LISTEN_PORT:-8888}

exec cfssl serve \
    -address="${CFSSL_LISTEN_ADDRESS}" \
    -port="${CFSSL_LISTEN_PORT}" \
    -ca=/srv/cfssl/ca-int.pem \
    -ca-key=/run/secrets/ca_int_key \
    -ca-bundle=/srv/cfssl/ca.pem \
    -int-bundle=/srv/cfssl/ca-int.pem \
    -tls-remote-ca=/srv/cfssl/ca-int.pem \
    -config=/srv/cfssl/cfssl.json \
    -db-config=/srv/cfssl/dbconfig.json \
    -disable init_ca,newcert
