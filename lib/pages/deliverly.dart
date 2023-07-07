import 'package:flutter/material.dart';

class Deliverly extends StatefulWidget {
  const Deliverly({Key? key}) : super(key: key);

  @override
  State<Deliverly> createState() => _DeliverlyState();
}

class _DeliverlyState extends State<Deliverly> {
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("ສະຖານທີ່ປະຈຸບັນ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            Text("Vientiane Capital",
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: const [
                Icon(Icons.favorite_border_outlined,
                    size: 25, color: Colors.pink),
                SizedBox(width: 15),
                Icon(Icons.card_travel_sharp, size: 25, color: Colors.pink),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
                ),
              ),
              height: 65,
              width: double.infinity,
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, bottom: 10, top: 10),
                      child: Container(
                        height: 45,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "ຊອກຫາສິ່ງທີ່ທ່ານມັກ",
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
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            right: 20, bottom: 10, top: 10),
                        child: Image.asset(
                          "assets/icons/setting.png",
                          width: 25,
                          height: 25,
                          color: Colors.pink,
                        )),
                  ],
                ),
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  height: 200,
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
                            height: 200,
                            width: 140,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  "${imagePromotion[index]["img"]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: Text(
                "ເມນູທີ່ບໍ່ຄວນພາດ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
