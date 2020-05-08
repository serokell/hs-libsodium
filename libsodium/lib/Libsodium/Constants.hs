{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE KindSignatures #-}
{-# OPTIONS_HADDOCK not-home #-}
module Libsodium.Constants where

import Data.Proxy
import Foreign.C
import GHC.TypeLits

--------------------------------------------------------------------------------

#define TN(ty_name, val, ty, val_name) \
  type ty_name = (val :: Nat); \
  val_name :: ty; \
  val_name = fromIntegral (natVal (Proxy :: Proxy ty_name))

#define TS(ty_name, val, val_name) \
  type ty_name = (val :: Symbol); \
  val_name :: String; \
  val_name = symbolVal (Proxy :: Proxy ty_name)

--------------------------------------------------------------------------------
-- Numeric constants. Their types agree with the corresponding C functions.

TN(CRYPTO_AEAD_AES256GCM_ABYTES, 16, CSize, crypto_aead_aes256gcm_abytes)
TN(CRYPTO_AEAD_AES256GCM_KEYBYTES, 32, CSize, crypto_aead_aes256gcm_keybytes)
TN(CRYPTO_AEAD_AES256GCM_MESSAGEBYTES_MAX, 68719476704, CSize, crypto_aead_aes256gcm_messagebytes_max)
TN(CRYPTO_AEAD_AES256GCM_NPUBBYTES, 12, CSize, crypto_aead_aes256gcm_npubbytes)
TN(CRYPTO_AEAD_AES256GCM_NSECBYTES, 0, CSize, crypto_aead_aes256gcm_nsecbytes)
TN(CRYPTO_AEAD_AES256GCM_STATEBYTES, 512, CSize, crypto_aead_aes256gcm_statebytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_ABYTES, 16, CSize, crypto_aead_chacha20poly1305_abytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_IETF_ABYTES, 16, CSize, crypto_aead_chacha20poly1305_ietf_abytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_IETF_KEYBYTES, 32, CSize, crypto_aead_chacha20poly1305_ietf_keybytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_IETF_MESSAGEBYTES_MAX, 274877906880, CSize, crypto_aead_chacha20poly1305_ietf_messagebytes_max)
TN(CRYPTO_AEAD_CHACHA20POLY1305_IETF_NPUBBYTES, 12, CSize, crypto_aead_chacha20poly1305_ietf_npubbytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_IETF_NSECBYTES, 0, CSize, crypto_aead_chacha20poly1305_ietf_nsecbytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_KEYBYTES, 32, CSize, crypto_aead_chacha20poly1305_keybytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_aead_chacha20poly1305_messagebytes_max)
TN(CRYPTO_AEAD_CHACHA20POLY1305_NPUBBYTES, 8, CSize, crypto_aead_chacha20poly1305_npubbytes)
TN(CRYPTO_AEAD_CHACHA20POLY1305_NSECBYTES, 0, CSize, crypto_aead_chacha20poly1305_nsecbytes)
TN(CRYPTO_AEAD_XCHACHA20POLY1305_IETF_ABYTES, 16, CSize, crypto_aead_xchacha20poly1305_ietf_abytes)
TN(CRYPTO_AEAD_XCHACHA20POLY1305_IETF_KEYBYTES, 32, CSize, crypto_aead_xchacha20poly1305_ietf_keybytes)
TN(CRYPTO_AEAD_XCHACHA20POLY1305_IETF_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_aead_xchacha20poly1305_ietf_messagebytes_max)
TN(CRYPTO_AEAD_XCHACHA20POLY1305_IETF_NPUBBYTES, 24, CSize, crypto_aead_xchacha20poly1305_ietf_npubbytes)
TN(CRYPTO_AEAD_XCHACHA20POLY1305_IETF_NSECBYTES, 0, CSize, crypto_aead_xchacha20poly1305_ietf_nsecbytes)
TN(CRYPTO_AUTH_BYTES, 32, CSize, crypto_auth_bytes)
TN(CRYPTO_AUTH_HMACSHA256_BYTES, 32, CSize, crypto_auth_hmacsha256_bytes)
TN(CRYPTO_AUTH_HMACSHA256_KEYBYTES, 32, CSize, crypto_auth_hmacsha256_keybytes)
TN(CRYPTO_AUTH_HMACSHA256_STATEBYTES, 208, CSize, crypto_auth_hmacsha256_statebytes)
TN(CRYPTO_AUTH_HMACSHA512256_BYTES, 32, CSize, crypto_auth_hmacsha512256_bytes)
TN(CRYPTO_AUTH_HMACSHA512256_KEYBYTES, 32, CSize, crypto_auth_hmacsha512256_keybytes)
TN(CRYPTO_AUTH_HMACSHA512256_STATEBYTES, 416, CSize, crypto_auth_hmacsha512256_statebytes)
TN(CRYPTO_AUTH_HMACSHA512_BYTES, 64, CSize, crypto_auth_hmacsha512_bytes)
TN(CRYPTO_AUTH_HMACSHA512_KEYBYTES, 32, CSize, crypto_auth_hmacsha512_keybytes)
TN(CRYPTO_AUTH_HMACSHA512_STATEBYTES, 416, CSize, crypto_auth_hmacsha512_statebytes)
TN(CRYPTO_AUTH_KEYBYTES, 32, CSize, crypto_auth_keybytes)
TN(CRYPTO_BOX_BEFORENMBYTES, 32, CSize, crypto_box_beforenmbytes)
TN(CRYPTO_BOX_BOXZEROBYTES, 16, CSize, crypto_box_boxzerobytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_BEFORENMBYTES, 32, CSize, crypto_box_curve25519xchacha20poly1305_beforenmbytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_MACBYTES, 16, CSize, crypto_box_curve25519xchacha20poly1305_macbytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_box_curve25519xchacha20poly1305_messagebytes_max)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_NONCEBYTES, 24, CSize, crypto_box_curve25519xchacha20poly1305_noncebytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_PUBLICKEYBYTES, 32, CSize, crypto_box_curve25519xchacha20poly1305_publickeybytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_SEALBYTES, 48, CSize, crypto_box_curve25519xchacha20poly1305_sealbytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_SECRETKEYBYTES, 32, CSize, crypto_box_curve25519xchacha20poly1305_secretkeybytes)
TN(CRYPTO_BOX_CURVE25519XCHACHA20POLY1305_SEEDBYTES, 32, CSize, crypto_box_curve25519xchacha20poly1305_seedbytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_BEFORENMBYTES, 32, CSize, crypto_box_curve25519xsalsa20poly1305_beforenmbytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_BOXZEROBYTES, 16, CSize, crypto_box_curve25519xsalsa20poly1305_boxzerobytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_MACBYTES, 16, CSize, crypto_box_curve25519xsalsa20poly1305_macbytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_box_curve25519xsalsa20poly1305_messagebytes_max)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_NONCEBYTES, 24, CSize, crypto_box_curve25519xsalsa20poly1305_noncebytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_PUBLICKEYBYTES, 32, CSize, crypto_box_curve25519xsalsa20poly1305_publickeybytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_SECRETKEYBYTES, 32, CSize, crypto_box_curve25519xsalsa20poly1305_secretkeybytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_SEEDBYTES, 32, CSize, crypto_box_curve25519xsalsa20poly1305_seedbytes)
TN(CRYPTO_BOX_CURVE25519XSALSA20POLY1305_ZEROBYTES, 32, CSize, crypto_box_curve25519xsalsa20poly1305_zerobytes)
TN(CRYPTO_BOX_MACBYTES, 16, CSize, crypto_box_macbytes)
TN(CRYPTO_BOX_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_box_messagebytes_max)
TN(CRYPTO_BOX_NONCEBYTES, 24, CSize, crypto_box_noncebytes)
TN(CRYPTO_BOX_PUBLICKEYBYTES, 32, CSize, crypto_box_publickeybytes)
TN(CRYPTO_BOX_SEALBYTES, 48, CSize, crypto_box_sealbytes)
TN(CRYPTO_BOX_SECRETKEYBYTES, 32, CSize, crypto_box_secretkeybytes)
TN(CRYPTO_BOX_SEEDBYTES, 32, CSize, crypto_box_seedbytes)
TN(CRYPTO_BOX_ZEROBYTES, 32, CSize, crypto_box_zerobytes)
TN(CRYPTO_CORE_ED25519_BYTES, 32, CSize, crypto_core_ed25519_bytes)
TN(CRYPTO_CORE_ED25519_HASHBYTES, 64, CSize, crypto_core_ed25519_hashbytes)
TN(CRYPTO_CORE_ED25519_NONREDUCEDSCALARBYTES, 64, CSize, crypto_core_ed25519_nonreducedscalarbytes)
TN(CRYPTO_CORE_ED25519_SCALARBYTES, 32, CSize, crypto_core_ed25519_scalarbytes)
TN(CRYPTO_CORE_ED25519_UNIFORMBYTES, 32, CSize, crypto_core_ed25519_uniformbytes)
TN(CRYPTO_CORE_HCHACHA20_CONSTBYTES, 16, CSize, crypto_core_hchacha20_constbytes)
TN(CRYPTO_CORE_HCHACHA20_INPUTBYTES, 16, CSize, crypto_core_hchacha20_inputbytes)
TN(CRYPTO_CORE_HCHACHA20_KEYBYTES, 32, CSize, crypto_core_hchacha20_keybytes)
TN(CRYPTO_CORE_HCHACHA20_OUTPUTBYTES, 32, CSize, crypto_core_hchacha20_outputbytes)
TN(CRYPTO_CORE_HSALSA20_CONSTBYTES, 16, CSize, crypto_core_hsalsa20_constbytes)
TN(CRYPTO_CORE_HSALSA20_INPUTBYTES, 16, CSize, crypto_core_hsalsa20_inputbytes)
TN(CRYPTO_CORE_HSALSA20_KEYBYTES, 32, CSize, crypto_core_hsalsa20_keybytes)
TN(CRYPTO_CORE_HSALSA20_OUTPUTBYTES, 32, CSize, crypto_core_hsalsa20_outputbytes)
TN(CRYPTO_CORE_RISTRETTO255_BYTES, 32, CSize, crypto_core_ristretto255_bytes)
TN(CRYPTO_CORE_RISTRETTO255_HASHBYTES, 64, CSize, crypto_core_ristretto255_hashbytes)
TN(CRYPTO_CORE_RISTRETTO255_NONREDUCEDSCALARBYTES, 64, CSize, crypto_core_ristretto255_nonreducedscalarbytes)
TN(CRYPTO_CORE_RISTRETTO255_SCALARBYTES, 32, CSize, crypto_core_ristretto255_scalarbytes)
TN(CRYPTO_CORE_SALSA2012_CONSTBYTES, 16, CSize, crypto_core_salsa2012_constbytes)
TN(CRYPTO_CORE_SALSA2012_INPUTBYTES, 16, CSize, crypto_core_salsa2012_inputbytes)
TN(CRYPTO_CORE_SALSA2012_KEYBYTES, 32, CSize, crypto_core_salsa2012_keybytes)
TN(CRYPTO_CORE_SALSA2012_OUTPUTBYTES, 64, CSize, crypto_core_salsa2012_outputbytes)
TN(CRYPTO_CORE_SALSA208_CONSTBYTES, 16, CSize, crypto_core_salsa208_constbytes)
TN(CRYPTO_CORE_SALSA208_INPUTBYTES, 16, CSize, crypto_core_salsa208_inputbytes)
TN(CRYPTO_CORE_SALSA208_KEYBYTES, 32, CSize, crypto_core_salsa208_keybytes)
TN(CRYPTO_CORE_SALSA208_OUTPUTBYTES, 64, CSize, crypto_core_salsa208_outputbytes)
TN(CRYPTO_CORE_SALSA20_CONSTBYTES, 16, CSize, crypto_core_salsa20_constbytes)
TN(CRYPTO_CORE_SALSA20_INPUTBYTES, 16, CSize, crypto_core_salsa20_inputbytes)
TN(CRYPTO_CORE_SALSA20_KEYBYTES, 32, CSize, crypto_core_salsa20_keybytes)
TN(CRYPTO_CORE_SALSA20_OUTPUTBYTES, 64, CSize, crypto_core_salsa20_outputbytes)
TN(CRYPTO_GENERICHASH_BLAKE2B_BYTES, 32, CSize, crypto_generichash_blake2b_bytes)
TN(CRYPTO_GENERICHASH_BLAKE2B_BYTES_MAX, 64, CSize, crypto_generichash_blake2b_bytes_max)
TN(CRYPTO_GENERICHASH_BLAKE2B_BYTES_MIN, 16, CSize, crypto_generichash_blake2b_bytes_min)
TN(CRYPTO_GENERICHASH_BLAKE2B_KEYBYTES, 32, CSize, crypto_generichash_blake2b_keybytes)
TN(CRYPTO_GENERICHASH_BLAKE2B_KEYBYTES_MAX, 64, CSize, crypto_generichash_blake2b_keybytes_max)
TN(CRYPTO_GENERICHASH_BLAKE2B_KEYBYTES_MIN, 16, CSize, crypto_generichash_blake2b_keybytes_min)
TN(CRYPTO_GENERICHASH_BLAKE2B_PERSONALBYTES, 16, CSize, crypto_generichash_blake2b_personalbytes)
TN(CRYPTO_GENERICHASH_BLAKE2B_SALTBYTES, 16, CSize, crypto_generichash_blake2b_saltbytes)
TN(CRYPTO_GENERICHASH_BLAKE2B_STATEBYTES, 384, CSize, crypto_generichash_blake2b_statebytes)
TN(CRYPTO_GENERICHASH_BYTES, 32, CSize, crypto_generichash_bytes)
TN(CRYPTO_GENERICHASH_BYTES_MAX, 64, CSize, crypto_generichash_bytes_max)
TN(CRYPTO_GENERICHASH_BYTES_MIN, 16, CSize, crypto_generichash_bytes_min)
TN(CRYPTO_GENERICHASH_KEYBYTES, 32, CSize, crypto_generichash_keybytes)
TN(CRYPTO_GENERICHASH_KEYBYTES_MAX, 64, CSize, crypto_generichash_keybytes_max)
TN(CRYPTO_GENERICHASH_KEYBYTES_MIN, 16, CSize, crypto_generichash_keybytes_min)
TN(CRYPTO_GENERICHASH_STATEBYTES, 384, CSize, crypto_generichash_statebytes)
TN(CRYPTO_HASH_BYTES, 64, CSize, crypto_hash_bytes)
TN(CRYPTO_HASH_SHA256_BYTES, 32, CSize, crypto_hash_sha256_bytes)
TN(CRYPTO_HASH_SHA256_STATEBYTES, 104, CSize, crypto_hash_sha256_statebytes)
TN(CRYPTO_HASH_SHA512_BYTES, 64, CSize, crypto_hash_sha512_bytes)
TN(CRYPTO_HASH_SHA512_STATEBYTES, 208, CSize, crypto_hash_sha512_statebytes)
TN(CRYPTO_KDF_BLAKE2B_BYTES_MAX, 64, CSize, crypto_kdf_blake2b_bytes_max)
TN(CRYPTO_KDF_BLAKE2B_BYTES_MIN, 16, CSize, crypto_kdf_blake2b_bytes_min)
TN(CRYPTO_KDF_BLAKE2B_CONTEXTBYTES, 8, CSize, crypto_kdf_blake2b_contextbytes)
TN(CRYPTO_KDF_BLAKE2B_KEYBYTES, 32, CSize, crypto_kdf_blake2b_keybytes)
TN(CRYPTO_KDF_BYTES_MAX, 64, CSize, crypto_kdf_bytes_max)
TN(CRYPTO_KDF_BYTES_MIN, 16, CSize, crypto_kdf_bytes_min)
TN(CRYPTO_KDF_CONTEXTBYTES, 8, CSize, crypto_kdf_contextbytes)
TN(CRYPTO_KDF_KEYBYTES, 32, CSize, crypto_kdf_keybytes)
TN(CRYPTO_KX_PUBLICKEYBYTES, 32, CSize, crypto_kx_publickeybytes)
TN(CRYPTO_KX_SECRETKEYBYTES, 32, CSize, crypto_kx_secretkeybytes)
TN(CRYPTO_KX_SEEDBYTES, 32, CSize, crypto_kx_seedbytes)
TN(CRYPTO_KX_SESSIONKEYBYTES, 32, CSize, crypto_kx_sessionkeybytes)
TN(CRYPTO_ONETIMEAUTH_BYTES, 16, CSize, crypto_onetimeauth_bytes)
TN(CRYPTO_ONETIMEAUTH_KEYBYTES, 32, CSize, crypto_onetimeauth_keybytes)
TN(CRYPTO_ONETIMEAUTH_POLY1305_BYTES, 16, CSize, crypto_onetimeauth_poly1305_bytes)
TN(CRYPTO_ONETIMEAUTH_POLY1305_KEYBYTES, 32, CSize, crypto_onetimeauth_poly1305_keybytes)
TN(CRYPTO_ONETIMEAUTH_POLY1305_STATEBYTES, 256, CSize, crypto_onetimeauth_poly1305_statebytes)
TN(CRYPTO_ONETIMEAUTH_STATEBYTES, 256, CSize, crypto_onetimeauth_statebytes)
TN(CRYPTO_PWHASH_ALG_ARGON2I13, 1, CInt, crypto_pwhash_alg_argon2i13)
TN(CRYPTO_PWHASH_ALG_ARGON2ID13, 2, CInt, crypto_pwhash_alg_argon2id13)
TN(CRYPTO_PWHASH_ALG_DEFAULT, 2, CInt, crypto_pwhash_alg_default)
TN(CRYPTO_PWHASH_ARGON2I_ALG_ARGON2I13, 1, CInt, crypto_pwhash_argon2i_alg_argon2i13)
TN(CRYPTO_PWHASH_ARGON2I_BYTES_MAX, 4294967295, CSize, crypto_pwhash_argon2i_bytes_max)
TN(CRYPTO_PWHASH_ARGON2I_BYTES_MIN, 16, CSize, crypto_pwhash_argon2i_bytes_min)
TN(CRYPTO_PWHASH_ARGON2ID_ALG_ARGON2ID13, 2, CInt, crypto_pwhash_argon2id_alg_argon2id13)
TN(CRYPTO_PWHASH_ARGON2ID_BYTES_MAX, 4294967295, CSize, crypto_pwhash_argon2id_bytes_max)
TN(CRYPTO_PWHASH_ARGON2ID_BYTES_MIN, 16, CSize, crypto_pwhash_argon2id_bytes_min)
TN(CRYPTO_PWHASH_ARGON2ID_MEMLIMIT_INTERACTIVE, 67108864, CSize, crypto_pwhash_argon2id_memlimit_interactive)
TN(CRYPTO_PWHASH_ARGON2ID_MEMLIMIT_MAX, 4398046510080, CSize, crypto_pwhash_argon2id_memlimit_max)
TN(CRYPTO_PWHASH_ARGON2ID_MEMLIMIT_MIN, 8192, CSize, crypto_pwhash_argon2id_memlimit_min)
TN(CRYPTO_PWHASH_ARGON2ID_MEMLIMIT_MODERATE, 268435456, CSize, crypto_pwhash_argon2id_memlimit_moderate)
TN(CRYPTO_PWHASH_ARGON2ID_MEMLIMIT_SENSITIVE, 1073741824, CSize, crypto_pwhash_argon2id_memlimit_sensitive)
TN(CRYPTO_PWHASH_ARGON2ID_OPSLIMIT_INTERACTIVE, 2, CSize, crypto_pwhash_argon2id_opslimit_interactive)
TN(CRYPTO_PWHASH_ARGON2ID_OPSLIMIT_MAX, 4294967295, CSize, crypto_pwhash_argon2id_opslimit_max)
TN(CRYPTO_PWHASH_ARGON2ID_OPSLIMIT_MIN, 1, CSize, crypto_pwhash_argon2id_opslimit_min)
TN(CRYPTO_PWHASH_ARGON2ID_OPSLIMIT_MODERATE, 3, CSize, crypto_pwhash_argon2id_opslimit_moderate)
TN(CRYPTO_PWHASH_ARGON2ID_OPSLIMIT_SENSITIVE, 4, CSize, crypto_pwhash_argon2id_opslimit_sensitive)
TN(CRYPTO_PWHASH_ARGON2ID_PASSWD_MAX, 4294967295, CSize, crypto_pwhash_argon2id_passwd_max)
TN(CRYPTO_PWHASH_ARGON2ID_PASSWD_MIN, 0, CSize, crypto_pwhash_argon2id_passwd_min)
TN(CRYPTO_PWHASH_ARGON2ID_SALTBYTES, 16, CSize, crypto_pwhash_argon2id_saltbytes)
TN(CRYPTO_PWHASH_ARGON2ID_STRBYTES, 128, CSize, crypto_pwhash_argon2id_strbytes)
TN(CRYPTO_PWHASH_ARGON2I_MEMLIMIT_INTERACTIVE, 33554432, CSize, crypto_pwhash_argon2i_memlimit_interactive)
TN(CRYPTO_PWHASH_ARGON2I_MEMLIMIT_MAX, 4398046510080, CSize, crypto_pwhash_argon2i_memlimit_max)
TN(CRYPTO_PWHASH_ARGON2I_MEMLIMIT_MIN, 8192, CSize, crypto_pwhash_argon2i_memlimit_min)
TN(CRYPTO_PWHASH_ARGON2I_MEMLIMIT_MODERATE, 134217728, CSize, crypto_pwhash_argon2i_memlimit_moderate)
TN(CRYPTO_PWHASH_ARGON2I_MEMLIMIT_SENSITIVE, 536870912, CSize, crypto_pwhash_argon2i_memlimit_sensitive)
TN(CRYPTO_PWHASH_ARGON2I_OPSLIMIT_INTERACTIVE, 4, CSize, crypto_pwhash_argon2i_opslimit_interactive)
TN(CRYPTO_PWHASH_ARGON2I_OPSLIMIT_MAX, 4294967295, CSize, crypto_pwhash_argon2i_opslimit_max)
TN(CRYPTO_PWHASH_ARGON2I_OPSLIMIT_MIN, 3, CSize, crypto_pwhash_argon2i_opslimit_min)
TN(CRYPTO_PWHASH_ARGON2I_OPSLIMIT_MODERATE, 6, CSize, crypto_pwhash_argon2i_opslimit_moderate)
TN(CRYPTO_PWHASH_ARGON2I_OPSLIMIT_SENSITIVE, 8, CSize, crypto_pwhash_argon2i_opslimit_sensitive)
TN(CRYPTO_PWHASH_ARGON2I_PASSWD_MAX, 4294967295, CSize, crypto_pwhash_argon2i_passwd_max)
TN(CRYPTO_PWHASH_ARGON2I_PASSWD_MIN, 0, CSize, crypto_pwhash_argon2i_passwd_min)
TN(CRYPTO_PWHASH_ARGON2I_SALTBYTES, 16, CSize, crypto_pwhash_argon2i_saltbytes)
TN(CRYPTO_PWHASH_ARGON2I_STRBYTES, 128, CSize, crypto_pwhash_argon2i_strbytes)
TN(CRYPTO_PWHASH_BYTES_MAX, 4294967295, CSize, crypto_pwhash_bytes_max)
TN(CRYPTO_PWHASH_BYTES_MIN, 16, CSize, crypto_pwhash_bytes_min)
TN(CRYPTO_PWHASH_MEMLIMIT_INTERACTIVE, 67108864, CSize, crypto_pwhash_memlimit_interactive)
TN(CRYPTO_PWHASH_MEMLIMIT_MAX, 4398046510080, CSize, crypto_pwhash_memlimit_max)
TN(CRYPTO_PWHASH_MEMLIMIT_MIN, 8192, CSize, crypto_pwhash_memlimit_min)
TN(CRYPTO_PWHASH_MEMLIMIT_MODERATE, 268435456, CSize, crypto_pwhash_memlimit_moderate)
TN(CRYPTO_PWHASH_MEMLIMIT_SENSITIVE, 1073741824, CSize, crypto_pwhash_memlimit_sensitive)
TN(CRYPTO_PWHASH_OPSLIMIT_INTERACTIVE, 2, CSize, crypto_pwhash_opslimit_interactive)
TN(CRYPTO_PWHASH_OPSLIMIT_MAX, 4294967295, CSize, crypto_pwhash_opslimit_max)
TN(CRYPTO_PWHASH_OPSLIMIT_MIN, 1, CSize, crypto_pwhash_opslimit_min)
TN(CRYPTO_PWHASH_OPSLIMIT_MODERATE, 3, CSize, crypto_pwhash_opslimit_moderate)
TN(CRYPTO_PWHASH_OPSLIMIT_SENSITIVE, 4, CSize, crypto_pwhash_opslimit_sensitive)
TN(CRYPTO_PWHASH_PASSWD_MAX, 4294967295, CSize, crypto_pwhash_passwd_max)
TN(CRYPTO_PWHASH_PASSWD_MIN, 0, CSize, crypto_pwhash_passwd_min)
TN(CRYPTO_PWHASH_SALTBYTES, 16, CSize, crypto_pwhash_saltbytes)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_BYTES_MAX, 137438953440, CSize, crypto_pwhash_scryptsalsa208sha256_bytes_max)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_BYTES_MIN, 16, CSize, crypto_pwhash_scryptsalsa208sha256_bytes_min)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_MEMLIMIT_INTERACTIVE, 16777216, CSize, crypto_pwhash_scryptsalsa208sha256_memlimit_interactive)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_MEMLIMIT_MAX, 68719476736, CSize, crypto_pwhash_scryptsalsa208sha256_memlimit_max)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_MEMLIMIT_MIN, 16777216, CSize, crypto_pwhash_scryptsalsa208sha256_memlimit_min)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_MEMLIMIT_SENSITIVE, 1073741824, CSize, crypto_pwhash_scryptsalsa208sha256_memlimit_sensitive)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_OPSLIMIT_INTERACTIVE, 524288, CSize, crypto_pwhash_scryptsalsa208sha256_opslimit_interactive)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_OPSLIMIT_MAX, 4294967295, CSize, crypto_pwhash_scryptsalsa208sha256_opslimit_max)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_OPSLIMIT_MIN, 32768, CSize, crypto_pwhash_scryptsalsa208sha256_opslimit_min)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_OPSLIMIT_SENSITIVE, 33554432, CSize, crypto_pwhash_scryptsalsa208sha256_opslimit_sensitive)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_PASSWD_MAX, 18446744073709551615, CSize, crypto_pwhash_scryptsalsa208sha256_passwd_max)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_PASSWD_MIN, 0, CSize, crypto_pwhash_scryptsalsa208sha256_passwd_min)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_SALTBYTES, 32, CSize, crypto_pwhash_scryptsalsa208sha256_saltbytes)
TN(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_STRBYTES, 102, CSize, crypto_pwhash_scryptsalsa208sha256_strbytes)
TN(CRYPTO_PWHASH_STRBYTES, 128, CSize, crypto_pwhash_strbytes)
TN(CRYPTO_SCALARMULT_BYTES, 32, CSize, crypto_scalarmult_bytes)
TN(CRYPTO_SCALARMULT_CURVE25519_BYTES, 32, CSize, crypto_scalarmult_curve25519_bytes)
TN(CRYPTO_SCALARMULT_CURVE25519_SCALARBYTES, 32, CSize, crypto_scalarmult_curve25519_scalarbytes)
TN(CRYPTO_SCALARMULT_ED25519_BYTES, 32, CSize, crypto_scalarmult_ed25519_bytes)
TN(CRYPTO_SCALARMULT_ED25519_SCALARBYTES, 32, CSize, crypto_scalarmult_ed25519_scalarbytes)
TN(CRYPTO_SCALARMULT_RISTRETTO255_BYTES, 32, CSize, crypto_scalarmult_ristretto255_bytes)
TN(CRYPTO_SCALARMULT_RISTRETTO255_SCALARBYTES, 32, CSize, crypto_scalarmult_ristretto255_scalarbytes)
TN(CRYPTO_SCALARMULT_SCALARBYTES, 32, CSize, crypto_scalarmult_scalarbytes)
TN(CRYPTO_SECRETBOX_BOXZEROBYTES, 16, CSize, crypto_secretbox_boxzerobytes)
TN(CRYPTO_SECRETBOX_KEYBYTES, 32, CSize, crypto_secretbox_keybytes)
TN(CRYPTO_SECRETBOX_MACBYTES, 16, CSize, crypto_secretbox_macbytes)
TN(CRYPTO_SECRETBOX_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_secretbox_messagebytes_max)
TN(CRYPTO_SECRETBOX_NONCEBYTES, 24, CSize, crypto_secretbox_noncebytes)
TN(CRYPTO_SECRETBOX_XCHACHA20POLY1305_KEYBYTES, 32, CSize, crypto_secretbox_xchacha20poly1305_keybytes)
TN(CRYPTO_SECRETBOX_XCHACHA20POLY1305_MACBYTES, 16, CSize, crypto_secretbox_xchacha20poly1305_macbytes)
TN(CRYPTO_SECRETBOX_XCHACHA20POLY1305_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_secretbox_xchacha20poly1305_messagebytes_max)
TN(CRYPTO_SECRETBOX_XCHACHA20POLY1305_NONCEBYTES, 24, CSize, crypto_secretbox_xchacha20poly1305_noncebytes)
TN(CRYPTO_SECRETBOX_XSALSA20POLY1305_BOXZEROBYTES, 16, CSize, crypto_secretbox_xsalsa20poly1305_boxzerobytes)
TN(CRYPTO_SECRETBOX_XSALSA20POLY1305_KEYBYTES, 32, CSize, crypto_secretbox_xsalsa20poly1305_keybytes)
TN(CRYPTO_SECRETBOX_XSALSA20POLY1305_MACBYTES, 16, CSize, crypto_secretbox_xsalsa20poly1305_macbytes)
TN(CRYPTO_SECRETBOX_XSALSA20POLY1305_MESSAGEBYTES_MAX, 18446744073709551599, CSize, crypto_secretbox_xsalsa20poly1305_messagebytes_max)
TN(CRYPTO_SECRETBOX_XSALSA20POLY1305_NONCEBYTES, 24, CSize, crypto_secretbox_xsalsa20poly1305_noncebytes)
TN(CRYPTO_SECRETBOX_XSALSA20POLY1305_ZEROBYTES, 32, CSize, crypto_secretbox_xsalsa20poly1305_zerobytes)
TN(CRYPTO_SECRETBOX_ZEROBYTES, 32, CSize, crypto_secretbox_zerobytes)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_ABYTES, 17, CSize, crypto_secretstream_xchacha20poly1305_abytes)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_HEADERBYTES, 24, CSize, crypto_secretstream_xchacha20poly1305_headerbytes)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_KEYBYTES, 32, CSize, crypto_secretstream_xchacha20poly1305_keybytes)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_MESSAGEBYTES_MAX, 274877906816, CSize, crypto_secretstream_xchacha20poly1305_messagebytes_max)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_STATEBYTES, 52, CSize, crypto_secretstream_xchacha20poly1305_statebytes)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_TAG_FINAL, 3, CUChar, crypto_secretstream_xchacha20poly1305_tag_final)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_TAG_MESSAGE, 0, CUChar, crypto_secretstream_xchacha20poly1305_tag_message)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_TAG_PUSH, 1, CUChar, crypto_secretstream_xchacha20poly1305_tag_push)
TN(CRYPTO_SECRETSTREAM_XCHACHA20POLY1305_TAG_REKEY, 2, CUChar, crypto_secretstream_xchacha20poly1305_tag_rekey)
TN(CRYPTO_SHORTHASH_BYTES, 8, CSize, crypto_shorthash_bytes)
TN(CRYPTO_SHORTHASH_KEYBYTES, 16, CSize, crypto_shorthash_keybytes)
TN(CRYPTO_SHORTHASH_SIPHASH24_BYTES, 8, CSize, crypto_shorthash_siphash24_bytes)
TN(CRYPTO_SHORTHASH_SIPHASH24_KEYBYTES, 16, CSize, crypto_shorthash_siphash24_keybytes)
TN(CRYPTO_SHORTHASH_SIPHASHX24_BYTES, 16, CSize, crypto_shorthash_siphashx24_bytes)
TN(CRYPTO_SHORTHASH_SIPHASHX24_KEYBYTES, 16, CSize, crypto_shorthash_siphashx24_keybytes)
TN(CRYPTO_SIGN_BYTES, 64, CSize, crypto_sign_bytes)
TN(CRYPTO_SIGN_ED25519_BYTES, 64, CSize, crypto_sign_ed25519_bytes)
TN(CRYPTO_SIGN_ED25519_MESSAGEBYTES_MAX, 18446744073709551551, CSize, crypto_sign_ed25519_messagebytes_max)
TN(CRYPTO_SIGN_ED25519PH_STATEBYTES, 208, CSize, crypto_sign_ed25519ph_statebytes)
TN(CRYPTO_SIGN_ED25519_PUBLICKEYBYTES, 32, CSize, crypto_sign_ed25519_publickeybytes)
TN(CRYPTO_SIGN_ED25519_SECRETKEYBYTES, 64, CSize, crypto_sign_ed25519_secretkeybytes)
TN(CRYPTO_SIGN_ED25519_SEEDBYTES, 32, CSize, crypto_sign_ed25519_seedbytes)
TN(CRYPTO_SIGN_MESSAGEBYTES_MAX, 18446744073709551551, CSize, crypto_sign_messagebytes_max)
TN(CRYPTO_SIGN_PUBLICKEYBYTES, 32, CSize, crypto_sign_publickeybytes)
TN(CRYPTO_SIGN_SECRETKEYBYTES, 64, CSize, crypto_sign_secretkeybytes)
TN(CRYPTO_SIGN_SEEDBYTES, 32, CSize, crypto_sign_seedbytes)
TN(CRYPTO_SIGN_STATEBYTES, 208, CSize, crypto_sign_statebytes)
TN(CRYPTO_STREAM_CHACHA20_IETF_KEYBYTES, 32, CSize, crypto_stream_chacha20_ietf_keybytes)
TN(CRYPTO_STREAM_CHACHA20_IETF_MESSAGEBYTES_MAX, 274877906944, CSize, crypto_stream_chacha20_ietf_messagebytes_max)
TN(CRYPTO_STREAM_CHACHA20_IETF_NONCEBYTES, 12, CSize, crypto_stream_chacha20_ietf_noncebytes)
TN(CRYPTO_STREAM_CHACHA20_KEYBYTES, 32, CSize, crypto_stream_chacha20_keybytes)
TN(CRYPTO_STREAM_CHACHA20_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_chacha20_messagebytes_max)
TN(CRYPTO_STREAM_CHACHA20_NONCEBYTES, 8, CSize, crypto_stream_chacha20_noncebytes)
TN(CRYPTO_STREAM_KEYBYTES, 32, CSize, crypto_stream_keybytes)
TN(CRYPTO_STREAM_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_messagebytes_max)
TN(CRYPTO_STREAM_NONCEBYTES, 24, CSize, crypto_stream_noncebytes)
TN(CRYPTO_STREAM_SALSA2012_KEYBYTES, 32, CSize, crypto_stream_salsa2012_keybytes)
TN(CRYPTO_STREAM_SALSA2012_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_salsa2012_messagebytes_max)
TN(CRYPTO_STREAM_SALSA2012_NONCEBYTES, 8, CSize, crypto_stream_salsa2012_noncebytes)
TN(CRYPTO_STREAM_SALSA208_KEYBYTES, 32, CSize, crypto_stream_salsa208_keybytes)
TN(CRYPTO_STREAM_SALSA208_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_salsa208_messagebytes_max)
TN(CRYPTO_STREAM_SALSA208_NONCEBYTES, 8, CSize, crypto_stream_salsa208_noncebytes)
TN(CRYPTO_STREAM_SALSA20_KEYBYTES, 32, CSize, crypto_stream_salsa20_keybytes)
TN(CRYPTO_STREAM_SALSA20_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_salsa20_messagebytes_max)
TN(CRYPTO_STREAM_SALSA20_NONCEBYTES, 8, CSize, crypto_stream_salsa20_noncebytes)
TN(CRYPTO_STREAM_XCHACHA20_KEYBYTES, 32, CSize, crypto_stream_xchacha20_keybytes)
TN(CRYPTO_STREAM_XCHACHA20_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_xchacha20_messagebytes_max)
TN(CRYPTO_STREAM_XCHACHA20_NONCEBYTES, 24, CSize, crypto_stream_xchacha20_noncebytes)
TN(CRYPTO_STREAM_XSALSA20_KEYBYTES, 32, CSize, crypto_stream_xsalsa20_keybytes)
TN(CRYPTO_STREAM_XSALSA20_MESSAGEBYTES_MAX, 18446744073709551615, CSize, crypto_stream_xsalsa20_messagebytes_max)
TN(CRYPTO_STREAM_XSALSA20_NONCEBYTES, 24, CSize, crypto_stream_xsalsa20_noncebytes)
TN(CRYPTO_VERIFY_16_BYTES, 16, CSize, crypto_verify_16_bytes)
TN(CRYPTO_VERIFY_32_BYTES, 32, CSize, crypto_verify_32_bytes)
TN(CRYPTO_VERIFY_64_BYTES, 64, CSize, crypto_verify_64_bytes)
TN(RANDOMBYTES_SEEDBYTES, 32, CSize, randombytes_seedbytes)
TN(SODIUM_LIBRARY_MINIMAL, 0, CInt, sodium_library_minimal)
TN(SODIUM_LIBRARY_VERSION_MAJOR, 10, CInt, sodium_library_version_major)
TN(SODIUM_LIBRARY_VERSION_MINOR, 3, CInt, sodium_library_version_minor)

-- These have no corresponding C functions
TN(SODIUM_BASE64_VARIANT_ORIGINAL, 1, CInt, sodium_base64_variant_original)
TN(SODIUM_BASE64_VARIANT_ORIGINAL_NO_PADDING, 3, CInt, sodium_base64_variant_original_no_padding)
TN(SODIUM_BASE64_VARIANT_URLSAFE, 5, CInt, sodium_base64_variant_urlsafe)
TN(SODIUM_BASE64_VARIANT_URLSAFE_NO_PADDING, 7, CInt, sodium_base64_variant_urlsafe_no_padding)

--------------------------------------------------------------------------------
-- String constants

TS(CRYPTO_AUTH_PRIMITIVE, "hmacsha512256", crypto_auth_primitive)
TS(CRYPTO_BOX_PRIMITIVE, "curve25519xsalsa20poly1305", crypto_box_primitive)
TS(CRYPTO_GENERICHASH_PRIMITIVE, "blake2b", crypto_generichash_primitive)
TS(CRYPTO_HASH_PRIMITIVE, "sha512", crypto_hash_primitive)
TS(CRYPTO_KDF_PRIMITIVE, "blake2b", crypto_kdf_primitive)
TS(CRYPTO_KX_PRIMITIVE, "x25519blake2b", crypto_kx_primitive)
TS(CRYPTO_ONETIMEAUTH_PRIMITIVE, "poly1305", crypto_onetimeauth_primitive)
TS(CRYPTO_PWHASH_ARGON2ID_STRPREFIX, "$argon2id$", crypto_pwhash_argon2id_strprefix)
TS(CRYPTO_PWHASH_ARGON2I_STRPREFIX, "$argon2i$", crypto_pwhash_argon2i_strprefix)
TS(CRYPTO_PWHASH_PRIMITIVE, "argon2i", crypto_pwhash_primitive)
TS(CRYPTO_PWHASH_SCRYPTSALSA208SHA256_STRPREFIX, "$7$", crypto_pwhash_scryptsalsa208sha256_strprefix)
TS(CRYPTO_PWHASH_STRPREFIX, "$argon2id$", crypto_pwhash_strprefix)
TS(CRYPTO_SCALARMULT_PRIMITIVE, "curve25519", crypto_scalarmult_primitive)
TS(CRYPTO_SECRETBOX_PRIMITIVE, "xsalsa20poly1305", crypto_secretbox_primitive)
TS(CRYPTO_SHORTHASH_PRIMITIVE, "siphash24", crypto_shorthash_primitive)
TS(CRYPTO_SIGN_PRIMITIVE, "ed25519", crypto_sign_primitive)
TS(CRYPTO_STREAM_PRIMITIVE, "xsalsa20", crypto_stream_primitive)
TS(SODIUM_VERSION_STRING, "1.0.18", sodium_version_string)
