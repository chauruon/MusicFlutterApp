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
    // logger.d('utc: $utc');
    final password = '$utc$userId';

    Future<String> encodedPassword()async{
      String encode = MyEncriptionDecryption.encodePassword(password, signatureKeySalt);
      return encode;
    }

    logger.d("Encoded Password: $encodedPassword");

    // final encryptWithAESKey = MyEncriptionDecryption.encryptWithAESKey(encodedPassword);
    // logger.d("encryptWithAESKey: $encryptWithAESKey");
    // late bool hidden;
    // @override
    // void initState() {
    //   hidden = true;
    //   super.initState();
    // }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Header(
              stateBack: true,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "jhsadgf",
                icon: Icon(
                  Icons.person_outline_outlined,
                ),
                // suffixIcon: IconButton(
                //   onPressed: () => setState(() {
                //     hidden = !hidden;
                //   }),
                //   icon: hidden ?
                //     const Icon(Icons.remove_red_eye_outlined) :
                //     const Icon(Icons.visibility_off_outlined),
                // ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
