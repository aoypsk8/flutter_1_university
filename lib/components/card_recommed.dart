import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/models/recommendModel.dart';
class Card_Recommed extends StatefulWidget {
  final recommendModel model;
  final VoidCallback press;
  const Card_Recommed({Key? key, required this.model, required this.press}) : super(key: key);

  @override
  State<Card_Recommed> createState() => _Card_RecommedState();
}

class _Card_RecommedState extends State<Card_Recommed> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:widget.press,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Container(
          width: 230,
          height: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "${widget.model.img}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "${widget.model.title}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text("${widget.model.type}", style: TextStyle(fontSize: 15)),
              Text("ຄ່າຈັດສົ່ງ KK ${widget.model.price}",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}