#! /usr/bin/env bash

KEY="00112233445566778889aabbccddeeff"
IV="0102030405060708"

# -aes-128-cbc
# openssl enc -aes-128-cbc -e -in plain.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708 | xxd

# -aes-128-cfb
# openssl enc -aes-128-cfb -e -in plain.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708 | xxd

# -bf-cbc
openssl enc -bf-cbc -e -in plain.txt -K 00112233445566778889aabbccddeeff -iv 0102030405060708 -provider legacy -provider default | xxd
