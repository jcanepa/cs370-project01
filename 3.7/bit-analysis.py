h1_hex = "3f03cd845ee8f5405d64055c08be02ca1c386b153e8f10ef19fdca85ffe406eb1c038fa4b9220ad414cc2cb88a1ef0e81b6c91339321d415808d2e0d0b7dd02d"
h2_hex = "18c9a8ff16b2b8a36faee1bf71e4d34e21f43035c17de0c60347110bbda128efb8d19b173fa2282d605d007dc0e79e9fec4a404a65b82cc336096f03af60f879"

# Convert hex to binary
h1_bin = bin(int(h1_hex, 16))[2:].zfill(256)  # For SHA256 (256 bits)
h2_bin = bin(int(h2_hex, 16))[2:].zfill(256)

# Count the number of same and different bits
same_bits = sum(1 for h1_bit, h2_bit in zip(h1_bin, h2_bin) if h1_bit == h2_bit)
different_bits = len(h1_bin) - same_bits

print(f"Bits the same: {same_bits}")
print(f"Bits different: {different_bits}")