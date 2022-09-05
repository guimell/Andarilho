import 'package:flutter/material.dart';

import 'config.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andarilho',
      theme: ThemeData.from(colorScheme: AppConfig.lightColors),
      darkTheme: ThemeData.from(colorScheme: AppConfig.darkColors),
      home: const HomePage(title: 'Andarilho'),
      debugShowCheckedModeBanner: false,
    );
  }
}
