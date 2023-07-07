import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/pages/login.dart';
import 'package:flutter_foodpanda/pages/register.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  int currentIndex = 0;

  List _pages = [
    LoginPage(),
    RegisterPage(),
  ];

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          toolbarHeight: 200,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
            ),
          ),
          bottom: TabBar(
            onTap: _onTap,
            indicator: UnderlineTabIndicator(),
            indicatorPadding:
                EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            tabs: const [
              Tab(text: " Login "),
              Tab(text: "Sign In "),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          child: _pages[currentIndex],
        ),
      ),
    );
  }
}
