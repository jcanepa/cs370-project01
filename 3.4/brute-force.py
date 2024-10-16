import sys
from Crypto.Cipher import AES
from binascii import unhexlify

# require python version 3.x
if sys.version_info[0] < 3:
    raise Exception("This script requires Python 3.x. Please run it with Python 3.")

# given plaintext
plaintext = b"This is a top secret."

# ciphertext (given as hex values)
ciphertext = unhexlify("8d20e5056a8d24d0462ce74e4904c1b513e10d1df4a2ef2ad4540fae1ca0aaf9")

# given initialization vector (IV) is all zeros
iv = b'\x00' * 16  # AES-128-CBC requires 16 bytes of length

# pad key with spaces to length of 16 bytes
def pad_key(word):
    return word.ljust(16, ' ').encode('utf-8')  # space (0x20)

# decrypt using AES-128-CBC
def decrypt(ciphertext, key, iv):
    cipher = AES.new(key, AES.MODE_CBC, iv)
    return cipher.decrypt(ciphertext)

# iterate through the word list and attempt decryption
with open('words.txt', 'r') as words:
    for line in words:
        word = line.strip()  # read each word from the word list
        key = pad_key(word)  # pad the word to 16 bytes

        try:
            decrypted_text = decrypt(ciphertext, key, iv)
            # check decrypted text against the target plaintext
            if decrypted_text.strip() == plaintext:
                print(f"Key found: {word}")
                break
        except Exception as e:
            # handle any errors (e.g., padding errors, invalid decryption)
            print(f"The program encountered an unexpected error.")
            continue