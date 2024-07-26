import 'package:flutter/material.dart';

import 'main/tab/main_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Banner(
        message: 'FlexZ',
        location: BannerLocation.bottomStart,
        child: MainWrapper(),
      ),
    );
  }
}