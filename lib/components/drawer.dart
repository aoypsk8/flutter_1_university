import 'package:flutter/material.dart';
// import 'package:flutter/material_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 350,
      child: ListView(
        children: [
          DrawerHeader(
            child: Stack(
              children: [
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: Opacity(
                      opacity: 0.7,
                      child: Image.asset(
                        "assets/profile.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                const Positioned(
                  bottom: 5,
                  left: 10,
                  child: Text(
                    "AOY PHONGSAKOUN (AOY)",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.airplane_ticket_outlined,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ບັດສ່ວນຫລຸດ & ຂໍ້ສະເຫນີ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.favorite,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ຂອງໂປດ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.line_style,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ປະຫວັດຫານສັ່ງຊື້ & ການສັ່ງຊື້ຄືນໃຫ່ມ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.person_outline,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ໂປຮໄຟລ໌",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.location_on,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ທີ່ຢູ່",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.add_card_outlined,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ວິທີການສຳລະເງີນ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.games_outlined,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ເກມ ແລະ ລາງວັນ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.help_outline,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ສູນສວຍເຫລືອ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.location_city_rounded,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "foodpanda ສຳຫລັບລູກຄ້າທຸລະກິດ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.pink[600]?.withOpacity(0.3),
            hoverColor: Colors.pink[600]?.withOpacity(0.3),
            child: ListTile(
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 2, right: 12),
                    child: Icon(
                      Icons.wallet_giftcard,
                      size: 30,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 12),
                    child: Text(
                      "ຊວນຫມູ່",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black26)),
          ),
          const SizedBox(height: 5),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("ການຕັ້ງຄ່າ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                    ],
                  )),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("ຂໍ້ກຳນົດ ແລະ ເງື່ອນໄຂ / ຄວາມເປັນສ່ວນຕົວ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                    ],
                  )),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("ອອກຈາກລະບົບ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
