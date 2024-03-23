import 'package:flutter/material.dart';

import 'package:musicplayerapp/pages/home_page.dart';
import 'package:musicplayerapp/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      initialRoute: 'intro',
      routes: {
        'intro': ( _ ) => const IntroPage(),
        'home': ( _ ) => const HomePage(),
        //'signup': ( _ ) => const HomePage(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
          background: Colors.black
        ),
        useMaterial3: true,
      )
    );
  }
}