#! /usr/bin/env bash

KEY="00112233445566778889aabbccddeeff"
IV="0102030405060708"

# Pass them into the openssl command using the built in generat
openssl enc -aes-128-cbc -e -in plain.txt -out cipher.bin -pass pass:foo -pbkdf2 -salt