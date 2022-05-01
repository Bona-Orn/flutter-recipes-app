import 'package:flutter/material.dart';
import 'package:recipes/screens/home_screen.dart';

import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'SFProText',
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.orange,
          )),
      // home: const OnboardingScreen(),
      home: const HomeScreen(),
    );
  }
}
