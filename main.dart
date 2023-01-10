import 'package:flutter/material.dart';
import 'package:untitled2/Auth/Login.dart';
// import 'package:untitled2/ProfileScreen.dart';
import 'package:untitled2/SimulatorScreen/home.dart';
import 'package:untitled2/graph.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const
          LoginPage(),
      // ProfileScreen()
      // Homescreen()
      // Graph(),
    );
  }
}

