import 'package:flutter/material.dart';
import 'package:flutter_practies_aap/widgets/chat_tile.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomChate_tile(),
            SizedBox(
              height: 2,
            ),
            CustomChate_tile(),
            // Container(
            //   margin: const EdgeInsets.only(top: 10, left: 10),
            //   //padding: const EdgeInsets.all(10),
            //   padding: const EdgeInsets.only(left: 40, top: 5),
            //   color: Colors.blueAccent,
            //   height: 200,
            //   width: 200,
            //   child: const Text('Hello !'),
            // ),

            // Row(
            //   children: [
            //     SizedBox(
            //       width: 14,
            //     ),
            //     CircleAvatar(
            //       backgroundColor: Colors.amber,
            //       radius: 25,
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     Column(
            //       children: [
            //         Text('Nabeel Mansoori'),
            //         Text('Kaha Ho Jani'),
            //       ],
            //     ),
            //     Spacer(),
            //     Text('09:00 PM'),
            //     SizedBox(
            //       width: 12,
            //     ),
            //   ],
            // ),
          ],

          // mainAxisAlignment: MainAxisAlignment.center,
          // children: [
          //   Container(
          //     padding: const EdgeInsets.only(left: 100),
          //     color: Colors.redAccent,
          //     child: const Text(
          //       'Hello!',
          //       style: TextStyle(
          //           fontSize: 40,
          //           fontWeight: FontWeight.bold,
          //           fontStyle: FontStyle.italic,
          //           textBaseline: TextBaseline.alphabetic),
          //     ),
          //   ),
          // ],
        ),
      ),
    );
  }
}
