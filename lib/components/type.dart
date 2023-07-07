import 'package:flutter/material.dart';

class type_panda extends StatefulWidget {
  const type_panda({Key? key}) : super(key: key);

  @override
  State<type_panda> createState() => _type_pandaState();
}

class _type_pandaState extends State<type_panda> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color.fromARGB(160, 230, 228, 224),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, left: 12, bottom: 12),
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, "/deliverly"),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "ຈັດສົ່ງອາຫານ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text("ຮ້່ານອາຫານແລະເຄື່ອງດື່ມ",
                                style: TextStyle(fontSize: 13)),
                          ],
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          child: Image.asset(
                            "assets/order-food.png",
                            fit: BoxFit.cover,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, right: 12, bottom: 12),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("ຮ້ານຄ້າ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Text("ເຄື່ອງກິນເຄື່ອງໃຊ້ ແລະ ອີກຫລາຍຢ່າງ",
                                      style: TextStyle(fontSize: 13)),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 12.0),
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: 130,
                                        height: double.infinity,
                                        child: Image.asset(
                                          "assets/store.png",
                                          fit: BoxFit.cover,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12, top: 12, bottom: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "pandago",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("ຈັດສົ່ງເຄື່ອງ"),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                    height: double.infinity,
                                    child: Image.asset(
                                      "assets/pandago.png",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
