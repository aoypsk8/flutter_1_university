import 'package:flutter/material.dart';

class Recommed_Detail extends StatefulWidget {
  final dynamic model;
  const Recommed_Detail({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  State<Recommed_Detail> createState() => _Recommed_DetailState();
}

class _Recommed_DetailState extends State<Recommed_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Bottom Sheet'),
          onPressed: _showBottomSheet,
        ),
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
        return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.4,
            maxChildSize: 0.9,
            minChildSize: 0.35,
            builder: (context, scrollController) => SingleChildScrollView(
                  controller: scrollController,
                  child: Center(child: Text("DADA")),
                ));
      },
    );
  }
}
    // return Scaffold(
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       SizedBox(height: 22),
    //       Stack(
    //         children: [
    //           Container(
    //             height: 300,
    //             width: double.infinity,
    //             decoration: const BoxDecoration(
    //               color: Color.fromARGB(255, 201, 197, 188),
    //             ),
    //             child: ClipRRect(
    //                 child: Image.network(
    //               widget.model["img"],
    //               width: double.infinity,
    //               fit: BoxFit.cover,
    //             )),
    //           ),
    //           InkWell(
    //             onTap: () => Navigator.pop(context),
    //             child: Padding(
    //               padding: const EdgeInsets.all(13.0),
    //               child: Container(
    //                 height: 35,
    //                 width: 35,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(50),
    //                   color: Color.fromARGB(255, 250, 250, 250),
    //                 ),
    //                 child: Center(
    //                   child: Text(
    //                     "X",
    //                     style: TextStyle(fontSize: 25),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ],
    //   ),
    // );