import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/pages/dashboard.dart';
import 'package:flutter_foodpanda/pages/deliverly.dart';
import 'package:flutter_foodpanda/pages/homepage.dart';
import 'package:flutter_foodpanda/pages/login.dart';
import 'package:flutter_foodpanda/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/homepage': (context) => HomePage(),
        '/deliverly': (context) => Deliverly()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const DashboardPage(),
    );
  }
}
