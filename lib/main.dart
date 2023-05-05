import 'package:flutter/material.dart';
import 'package:rider/AllScreens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxi Rider App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Signatra"),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
