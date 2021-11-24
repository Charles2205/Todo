import 'package:flutter/material.dart';
import 'package:todo/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.amber,
      ),
      home: const HomeView(),
    );
  }
}

