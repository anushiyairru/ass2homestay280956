import 'package:flutter/material.dart';

import 'package:homestayass2last/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homestay Raya',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const SplashScreen(),
    );
  }
}
