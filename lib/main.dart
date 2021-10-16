import 'package:flutter/material.dart';
import 'package:whatssaapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatssApp',
      theme: ThemeData(
       primaryColor: Color(0xff075e54),
       accentColor: Color(0xff25d366),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}


