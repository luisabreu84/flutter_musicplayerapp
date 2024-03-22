import 'package:flutter/material.dart';

import 'pages/intro_page.dart';

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
        //'home': ( _ ) => const HomePage(),
        //'signup': ( _ ) => const HomePage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade200),
        useMaterial3: true,
      )
    );
  }
}