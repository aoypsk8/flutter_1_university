import 'package:flutter_foodpanda/components/category.dart';
import 'package:flutter_foodpanda/components/pomotion.dart';
import 'package:flutter_foodpanda/components/recommend.dart';
import 'package:flutter_foodpanda/components/shop.dart';
import 'package:flutter_foodpanda/components/type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[100],
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            // //==========================first is type
            type_panda(),
            ////==========================popular restaurant
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "ຮ້ານອາຫານຍອດນິຍົມ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            ////==========================recommend
            Recommend(),

            ////========================== category
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                "ປະເພດອາຫານ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Category_food(),

            //========================== shop store
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 25.0),
              child: Text(
                "ຮ້ານຄ້າ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Shop(),

            //========================== pomotion per day
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 25.0),
              child: Text(
                "ສ່ວນຫລຸດປະຈຳວັນ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Pomotion()
          ],
        ),
      ),
    );
  }
}
