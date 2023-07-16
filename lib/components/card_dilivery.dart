import 'package:flutter/material.dart';
import 'package:flutter_foodpanda/models/delivery_model.dart';

class Card_Dilivery extends StatefulWidget {
  final delivery_model model;
  const Card_Dilivery({Key? key, required this.model}) : super(key: key);

  @override
  State<Card_Dilivery> createState() => _Card_DiliveryState();
}

class _Card_DiliveryState extends State<Card_Dilivery> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
        _counter = 1;
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _showBottomSheet,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    widget.model.img,
                    fit: BoxFit.cover,
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${widget.model.title}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.model.price} ກີບ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return Container(
          child: DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.4,
              maxChildSize: 1.0,
              minChildSize: 0.35,
              builder: (context, scrollController) => SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 300,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(30)),
                              child: Image.network(
                                "${widget.model.img}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 8),
                            child: Text(
                              "${widget.model.title}",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 8),
                            child: Text(
                              "${widget.model.type}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 8),
                            child: Text(
                              "${widget.model.subtext}",
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 12, right: 12, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${widget.model.price} ກີບ",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 35,
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: _incrementCounter,
                                        child: Container(
                                            width: 30,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 211, 211),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: const Center(
                                              child: Text(
                                                "+",
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Container(
                                        width: 60,
                                        height: double.infinity,
                                        child: Center(
                                          child: Text(
                                            "${_counter}",
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: _decrementCounter,
                                        child: Container(
                                            width: 30,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 219, 211, 211),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: const Center(
                                              child: Text(
                                                "-",
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                                width: double.infinity,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 248, 217, 124),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text("Add To Cart",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                      )),
                                )),
                          )
                        ],
                      ),
                    ),
                  )),
        );
      },
    );
  }
}
