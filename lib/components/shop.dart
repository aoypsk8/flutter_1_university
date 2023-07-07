import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<dynamic> StoeData = [
    {
      'title': "Mini",
      'img': "assets/store/a.jpeg",
    },
    {
      'title': "ເສີມສວຍ",
      'img': "assets/store/b.jpeg",
    },
    {
      'title': "ອີເລັກໂທນິກ",
      'img': "assets/store/c.jpeg",
    },
    {
      'title': "ຂອງຫວານ",
      'img': "assets/store/d.jpeg",
    },
    {
      'title': "ກະເປົ່າ",
      'img': "assets/store/e.jpeg",
    },
    {
      'title': "ຮ້ານຄ້າ",
      'img': "assets/store/f.jpeg",
    },
    {
      'title': "ນ້ຳ",
      'img': "assets/store/g.jpeg",
    },
    {
      'title': "ເພື່ອສູຸຂະພາບ",
      'img': "assets/store/h.jpeg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130.0,
        child: ListView.builder(
            itemCount: StoeData.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10, left: 12),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color.fromARGB(255, 206, 206, 206),
                            width: 2.0,
                            style: BorderStyle.solid)),
                    width: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              "${StoeData[index]['img']}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "${StoeData[index]['title']}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
