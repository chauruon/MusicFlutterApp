
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

import 'package:my_music/component/Header/header.dart';



class EncryptData extends StatefulWidget {
  const EncryptData({super.key});

  @override
  State<EncryptData> createState() => _EncryptDataState();
}

class _EncryptDataState extends State<EncryptData> {
  var logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Header(
              stateBack: true,
            ),
          ],
        )
      ),
    );
  }
}