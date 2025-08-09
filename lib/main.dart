import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "My App", home: HomePage());
  }
}
