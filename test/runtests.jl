using Test
using ToyECDSA

const key = genkey()
const msg = "Bill says this is an elliptic curve digital signature algorithm."
const altered = "Bill says this isn't an elliptic curve digital signature algorithm."

publickey, c, d = ECDSA_sign(msg, key)

@test isverifiedECDSA(msg, publickey, c, d)) == true

@test isverifiedECDSA(altered, publickey, c, d) == false

