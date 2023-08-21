import 'package:flutter/material.dart';
import 'package:my_music/provider/counter_provider.dart';
import 'package:my_music/provider/user_provider.dart';
import 'package:my_music/screen/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(create: (_) => CounterProvider()),
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
        // Add more providers here if needed.
      ],
      child: MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        home: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: const Home(),
        ),
      ),
    );
  }
}