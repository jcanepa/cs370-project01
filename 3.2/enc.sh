# encrypt bitmap image using ECB (Electronic Code Book)
openssl enc -aes-128-ecb -in mario.bmp -out mario-aes-128-ecb.enc -pass pass:itsame -pbkdf2
# decrypt to verify
openssl enc -d -aes-128-ecb -in mario-aes-128-ecb.enc -out decrypted-aes-128-ecb.bmp -pass pass:itsame -pbkdf2

# encrypt bitmap image using CBC (Cipher Block Chaining) modes (requires initialization vector)
openssl enc -aes-128-cbc -in mario.bmp -out mario-aes-128-cbc.enc -pass pass:itsame -pbkdf2 -iv 000102030405060708090a0b0c0d0e0f
openssl enc -d -aes-128-cbc -in mario-aes-128-cbc.enc -out decrypted-mario-cbc.bmp -pass pass:itsame -pbkdf2 -iv 000102030405060708090a0b0c0d0e0f