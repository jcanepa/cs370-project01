#! /usr/bin/env bash

rm ./*.txt
touch plain.txt && echo "Someday, a change is gonna come." > plain.txt

# encrypt file using aes-128-cbc, out = encrypt1.bin
openssl enc -aes-128-cbc -in plain.txt -out encrypt1.bin -pass pass:longtime -pbkdf2 -k 0B209191942D3E30308FBF8E44265B00 -iv 000102030405060708090a0b0c0d0e -nosalt -p
# encrypt again using same key & IV, out = encrtypt2.bin
openssl enc -aes-128-cbc -in plain.txt -out encrypt2.bin -pass pass:longtime -pbkdf2 -k 0B209191942D3E30308FBF8E44265B00 -iv 000102030405060708090a0b0c0d0e -nosalt -p
# encrypt again using same key, different IV, out = encrtypt3.bin
openssl enc -aes-128-cbc -in plain.txt -out encrypt3.bin -pass pass:longtime -pbkdf2  -k 0B209191942D3E30308FBF8E44265B00 -iv 3d9d51eb53c11d03fc9e2145df7e873d -nosalt -p
