import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/components/drawer.dart';
import 'package:flutter_foodpanda/pages/dashboard.dart';
import 'package:flutter_foodpanda/pages/deliverly.dart';
import 'package:flutter_foodpanda/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _refreshData() async {
    // Implement your data refresh logic here
    // This method will be called when the user pulls down to refresh
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: Colors.pink[500],
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("ສະຖານທີ່ປະຈຸບັນ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Vientiane Capital", style: TextStyle(fontSize: 14)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: const [
                Icon(Icons.favorite_border_outlined, size: 25),
                SizedBox(width: 15),
                Icon(Icons.card_travel_sharp, size: 25),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
              height: 65,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for shop & restaurants",
                            hintStyle: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(127, 0, 0, 0)),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Color.fromARGB(127, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: HomePage(),
      ),
    );
  }
}
