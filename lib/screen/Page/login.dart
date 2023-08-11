import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late bool hidden;
  @override
  void initState() {
    hidden = true;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "jhsadgf",
                icon: const Icon(
                  Icons.person_outline_outlined,
                ),
                suffixIcon: IconButton(
                  onPressed: () => setState(() {
                    hidden = !hidden;
                  }),
                  icon: hidden ?
                    const Icon(Icons.remove_red_eye_outlined) :
                    const Icon(Icons.visibility_off_outlined),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}