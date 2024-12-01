import 'package:flutter/material.dart';
import 'package:lab1/screens/details.dart';
import 'package:lab1/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '211198',
      initialRoute: '/',
      routes: {
        '/' : (context) => const Home(),
        '/details': (context) => const Details(),
      },
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
    );
  }
}