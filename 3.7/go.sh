#!/bin/bash

touch plain.txt
echo "The cow jumps over the moon" > plain.txt

openssl dgst -sha256 plain.txt
# SHA2-256(plain.txt)= 9ed7b218f3402376f0d2f77b89093704515f68f82857f17c9ba8dc4348ecf81f
openssl dgst -sha512 plain.txt
# SHA2-512(plain.txt)= 3f03cd845ee8f5405d64055c08be02ca1c386b153e8f10ef19fdca85ffe406eb1c038fa4b9220ad414cc2cb88a1ef0e81b6c91339321d415808d2e0d0b7dd02d

# flipped bit

# new hash values
# SHA2-256(plain.txt)= 9ed7b218f3402376f0d2f77b89093704515f68f82857f17c9ba8dc4348ecf81f
# SHA2-512(plain.txt)= 3f03cd845ee8f5405d64055c08be02ca1c386b153e8f10ef19fdca85ffe406eb1c038fa4b9220ad414cc2cb88a1ef0e81b6c91339321d415808d2e0d0b7dd02d