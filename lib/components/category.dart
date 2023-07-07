import 'package:flutter/material.dart';

class Category_food extends StatefulWidget {
  const Category_food({Key? key}) : super(key: key);

  @override
  State<Category_food> createState() => _Category_foodState();
}

class _Category_foodState extends State<Category_food> {
  List<dynamic> imageType1 = [
    {'img': "assets/type/berker.jpeg", "title": "ເບີເກີ້"},
    {'img': "assets/type/cake.jpeg", "title": "ເຄັກ"},
    {'img': "assets/type/char.jpeg", "title": "ຊາໄຂ່ມຸກ"},
    {'img': "assets/type/check.jpeg", "title": "ຂາໄກ່"},
    {'img': "assets/type/chinese.jpeg", "title": "ຂົ້ວ"},
    {'img': "assets/type/fish.jpeg", "title": "ແກງ"},
    {'img': "assets/type/icecreem.jpeg", "title": "ກະແລ້ມ"},
    {'img': "assets/type/krean.jpeg", "title": "ຕົ້ມຫມີ່"},
  ];
  List<dynamic> imageType2 = [
    {'img': "assets/type/laos.jpeg", "title": "ຕົ້ມຫມີ່"},
    {'img': "assets/type/piza.jpeg", "title": "ພິຊ້າ"},
    {'img': "assets/type/sea.jpeg", "title": "ອາຫານທະເລ"},
    {'img': "assets/type/suzi.jpeg", "title": "ແຕມ"},
    {'img': "assets/type/sweet.jpeg", "title": "ແຮັມເບີເກີ້"},
    {'img': "assets/type/water.jpeg", "title": "ນ້ຳປັ່ນ"},
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 110,
            width: double.infinity,
            child: ListView.builder(
                itemCount: imageType1.length,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "${imageType1[index]['img']}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                imageType1[index]['title'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 13.0),
            height: 110,
            width: double.infinity,
            child: ListView.builder(
                itemCount: imageType2.length,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  "${imageType2[index]['img']}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                imageType2[index]['title'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
