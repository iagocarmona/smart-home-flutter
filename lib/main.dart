import 'package:flutter/material.dart';
import 'package:teste/views/home.dart';
import 'package:teste/views/second_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}
