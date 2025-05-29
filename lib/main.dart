import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music/tabScreen.dart';
import 'package:music/tab_page/home_screen.dart';


void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'music',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          onBackground: Colors.black,
          onPrimary: Colors.black,
          onSecondary: Colors.black,
          onSurface: Colors.black,
          primary: Colors.black,
          secondary: Colors.black,
          background: Colors.black,
          brightness: Brightness.light,
          error: Colors.red,
          seedColor: Colors.black),
        useMaterial3: true
      ),
      home: TabScreen()
    );
  }
}
