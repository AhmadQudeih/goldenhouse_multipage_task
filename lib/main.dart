import 'package:flutter/material.dart';
import 'package:goldenhouse_multipage_task/firstPage.dart';
import 'package:goldenhouse_multipage_task/second.dart';

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
      home: Second(),
    );
  }
}
