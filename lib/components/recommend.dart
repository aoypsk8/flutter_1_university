import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/components/card_recommed.dart';
import 'package:flutter_foodpanda/models/recommendModel.dart';

class Recommend extends StatefulWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  List<dynamic> recommendData = [
    {
      'title': "ຮ່ອງແກ",
      'type': "ເຄື່ອງດື່ມອາເມຊອນ",
      'img':
          "https://th.bing.com/th/id/R.06996a46aa6971f433e4222e51d70261?rik=y6mlNe%2f1%2feHR8Q&pid=ImgRaw&r=0",
      "price": "10000",
      "subtext":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
    },
    {
      'title': "ດົງໂດກ",
      'type': "ແກງ",
      'img':
          "https://images.pexels.com/photos/699953/pexels-photo-699953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "price": "12000",
      "subtext":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
    },
    {
      'title': "ພະຂາວ",
      'type': "ສະລັດ",
      'img':
          "https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "price": "9000",
      "subtext":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
    },
    {
      'title': "ທ່າພະ",
      'type': "ຫມາກໄມ້",
      'img':
          "https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "price": "5000",
      "subtext":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
    },
    {
      'title': "ຫນ່ອງພົງ",
      'type': "ໄຂ່",
      'img':
          "https://images.pexels.com/photos/17609/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "price": "15000",
      "subtext":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
    },
    {
      'title': "ຊຽງຄວນ",
      'type': "ສະລັດ",
      'img':
          "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "price": "7000",
      "subtext":
          "Loremdd ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.builder(
          itemCount: recommendData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card_Recommed(
              model: recommendModel(
                recommendData[index]["title"],
                recommendData[index]["type"],
                recommendData[index]["img"],
                recommendData[index]["price"],
                recommendData[index]["subtext"],
              ),
            );
          }),
    );
  }
}
