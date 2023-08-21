import 'dart:convert';
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:logger/logger.dart';
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/key_derivators/api.dart';
import 'package:pointycastle/key_derivators/pbkdf2.dart';
import 'package:pointycastle/macs/hmac.dart';

import '../../ultils/env.dart';


var logger = Logger();
// const signatureKeyHashCount = 38542;
// const signatureKeySalt = "b8bdd03682e3eac8938b7a6ad3f59af4604de63b0e5b5f817c6f37d7c49a3d61";
// const signatureKeySaltDigit = 512;



class MyEncriptionDecryption {
  static encryptWithAESKey(String data){
    encrypt.Key aesKey = encrypt.Key.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(aesKey));
    if (data.isNotEmpty) {
      encrypt.Encrypted encryptData = encrypter.encrypt(data,iv: encrypt.IV.fromLength(16));
      return encryptData.base64;
    }else if(data.isEmpty){
      logger.d("data is empty");
    }
  }

  static decryptWithAESKey(String data){
    encrypt.Key aesKey = encrypt.Key.fromLength(16);
    final encrypter = encrypt.Encrypter(encrypt.AES(aesKey));
    encrypt.Encrypted encrypted = encrypt.Encrypted.fromBase64(data);
    if (data.isNotEmpty) {
      String decryptData = encrypter.decrypt(encrypted, iv: encrypt.IV.fromLength(16));
      return decryptData;
    }else if(data.isEmpty){
      logger.d("data is empty");
    }
  }

  static String encodePassword(String password, String salt) {
    final saltBytes = Uint8List.fromList(utf8.encode(salt));
    final passwordBytes = Uint8List.fromList(utf8.encode(password));

    // final pbkdf2 = PBKDF2KeyDerivator(HMac(SHA256Digest(), 64, blockSize: 32));
    final pbkdf2 = PBKDF2KeyDerivator( HMac(SHA256Digest(), 64) );
    pbkdf2.init(Pbkdf2Parameters(saltBytes, signatureKeyHashCount, signatureKeySaltDigit));

    final key = pbkdf2.process(passwordBytes);

    final encodedPassword = base64.encode(key);
    return encodedPassword;
  }

}