import 'package:flutter/material.dart';
import 'package:project/screens/home.dart';
import 'package:project/service/newsService.dart';

void main() {
  // newsService().getNews();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: home());
  }
}
