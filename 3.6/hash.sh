#! /usr/bin/env bash

openssl dgst -sha256 -hmac "foo" jayz.gif
openssl dgst -sha256 -hmac "foobar" jayz.gif
openssl dgst -sha256 -hmac "foobarbaz" jayz.gif
openssl dgst -sha256 -hmac "foobarbazquxquxx1234567890" jayz.gif

openssl dgst -sha1 -hmac "foo" jayz.gif
openssl dgst -sha1 -hmac "foobar" jayz.gif
openssl dgst -sha1 -hmac "foobarbaz" jayz.gif
openssl dgst -sha1 -hmac "foobarbazquxquxx1234567890" jayz.gif