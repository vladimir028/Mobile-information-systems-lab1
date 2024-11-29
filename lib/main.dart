import 'package:flutter/material.dart';
import 'package:lab1/screens/details_page.dart';
import 'package:lab1/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) =>  const MyHomePage(title: 'Lab 1 developed by 211028'),
        "/details": (context) => const MyDetailsPage(),
      },
    );
  }
}

