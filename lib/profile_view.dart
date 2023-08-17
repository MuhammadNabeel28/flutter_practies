import 'package:flutter/material.dart';

class PorfieView extends StatelessWidget {
  const PorfieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 180,
                  color: Colors.green,
                  padding: const EdgeInsets.all(5),
                  child: const Text('1ST ROW',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 150,
                  width: 180,
                  color: Colors.blueAccent,
                  padding: const EdgeInsets.all(5),
                  child: const Text('2ND Row',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Container(
              height: 150,
              width: 180,
              color: Colors.blueGrey,
              padding: const EdgeInsets.all(5),
              child: const Text('2ND Column',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: 180,
                  color: Colors.yellowAccent,
                  padding: const EdgeInsets.only(left: 5),
                  child: const Text('2ND ROW',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 5,
                ),
                //const Spacer(),
                Container(
                  height: 150,
                  width: 180,
                  color: Colors.pinkAccent,
                  padding: const EdgeInsets.all(5),
                  child: const Text('3RD ROW',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),

      //// Column Pratices
      ///
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.red,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "1st Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontStyle: FontStyle.italic,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.pink,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "2nd Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.black38,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "3rd Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.green,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "4th Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.amber,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "6th Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.black,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "7th Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       Container(
      //         height: 120,
      //         width: 150,
      //         color: Colors.blueAccent,
      //         padding: const EdgeInsets.all(20),
      //         child: const Text(
      //           "9th Container",
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //           ),
      //         ),
      //       )
      //     ],

      //     // height: 200,
      //     // width: 150,
      //     // color: Colors.red,
      //     // child: const Text("1st Container"),

      //     ///commit Network Image

      //     // decoration: BoxDecoration(
      //     //   color: const Color(0xff7c94b6),
      //     //   image: const DecorationImage(
      //     //       image: NetworkImage(
      //     //           'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
      //     //       fit: BoxFit.cover),
      //     //   // border: Border.all(width: 10),
      //     //   borderRadius: BorderRadius.circular(10),
      //     // ),
      //   ),
      // ),
    );
  }
}
