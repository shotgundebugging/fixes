# Based on https://devcenter.heroku.com/articles/ssl-certificate-self
openssl genrsa # Generation of RSA Parameters -> server.pass.key =>

openssl rsa # RSA Data Management -> private.key +
openssl req # X.509 Certificate Signing Request (CSR) Management -> server.csr =>

openssl x509 # X.509 Certificate Data Management (signs) -> server.crt

sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain server.crt

thin start --ssl --ssl-key-file /Users/mircea/craft/ssl-certificate/private.key --ssl-cert-file server.crt

# Configure server (Rails) to use SSL: config.force_ssl = true
