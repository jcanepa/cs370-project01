#! /usr/bin/env bash

rm ./*.txt
touch foo.txt && echo "hello mars" > foo.txt

openssl dgst -sha1 foo.txt
openssl dgst -sha512 foo.txt
openssl dgst -md5 foo.txt