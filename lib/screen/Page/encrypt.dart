import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:my_music/component/encription_decryption/my_encription_decryption.dart';
import 'package:my_music/component/header/header.dart';

import '../../ultils/env.dart';





var logger = Logger();


class EncryptData extends StatefulWidget {
  const EncryptData({super.key});

  @override
  State<EncryptData> createState() => _EncryptDataState();
}

class _EncryptDataState extends State<EncryptData> {
  @override
  Widget build(BuildContext context) {
    final utc = DateTime.now().toUtc();
    logger.d('utc: $utc');
    final password = '$utc$userId';


    final encodedPassword =  MyEncriptionDecryption.encodePassword(password, signatureKeySalt);
    logger.d("Encoded Password: $encodedPassword");

    // final encryptWithAESKey = MyEncriptionDecryption.encryptWithAESKey(encodedPassword);
    // logger.d("encryptWithAESKey: $encryptWithAESKey");
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Header(stateBack: true,),
          ],
        )
      ),
    );
  }
  
  
}