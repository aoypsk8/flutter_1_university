import 'package:flutter/material.dart';

class Pomotion extends StatefulWidget {
  const Pomotion({Key? key}) : super(key: key);

  @override
  State<Pomotion> createState() => _PomotionState();
}

class _PomotionState extends State<Pomotion> {
  List<dynamic> imagePromotion = [
    {'img': "assets/pomotion1.jpeg"},
    {'img': "assets/pomotion2.jpeg"},
    {'img': "assets/pomotion3.jpeg"},
    {'img': "assets/pomotion4.jpeg"},
    {'img': "assets/pomotion5.jpeg"},
    {'img': "assets/pomotion6.jpeg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imagePromotion.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                      ),
                      child: Container(
                        height: 210,
                        width: 180,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              imagePromotion[index]['img'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("ຮັບສ່ວນຫລຸດ K 30,000",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("ແລະໄດ້ຮັບສ່ວນຫລຸດທັງສອງຄົນ",
                        style: TextStyle(fontSize: 16, color: Colors.white))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
            child: Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("ຫລີ້ນເກມ & ລຸ້ນຮັບລາງວັນ!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Text("ສະສົມຄະແນນ ແລະ ລຸ້ນຮັບລາງວັນ",
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
