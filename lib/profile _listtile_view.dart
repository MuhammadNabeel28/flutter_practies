import 'package:flutter/material.dart';
import 'package:flutter_practies_aap/widgets/chat_tile.dart';

class ListTileView extends StatelessWidget {
  const ListTileView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whats App'),
          backgroundColor: Colors.black54,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_rounded,
              ),
            ),
          ],
          bottom: const TabBar(tabs: [
            Icon(
              Icons.people,
            ),
            Text('Chats'),
            Text('Status'),
            Text('Calls'),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.chat,
          ),
        ),
        body: const SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomChate_tile(
                    // name: 'Nabeel Mansoori',
                    // message: 'Where Are You',
                    // time: '09:10 am',
                    // id: 1,
                    ),
                // CustomChate_tile(
                //   name: 'Afaq',
                //   message: 'On My Way',
                //   time: '09:10 am',
                //   id: 2,
                // ),
                // CustomChate_tile(
                //   name: 'Bilal Rehman',
                //   message: 'acha bhai tu kal join Kerahy ho na?',
                //   time: '10:10 PM',
                //   id: 3,
                // ),
                // CustomChate_tile(
                //   name: 'Touseef Bhai',
                //   message: 'kal Build Realse Kerni Hai',
                //   time: '10:10 pm',
                //   id: 4,
                // ),
                // CustomChate_tile(
                //   name: 'Noor',
                //   message: 'yr is month may kahi ghoom nay chal tay hai',
                //   time: '03:10 am',
                //   id: 5,
                // ),
                // CustomChate_tile(
                //   name: 'Noman Mateen',
                //   message: 'han bhai kab tak nikal na hai?',
                //   time: '09:10 am',
                //   id: 6,
                // ),
                // CustomChate_tile(
                //   name: 'Khawar Bhai',
                //   message: 'Is month Say Salary Double',
                //   time: '09:10 am',
                //   id: 7,
                // ),
                // CustomChate_tile(
                //   name: 'Asad',
                //   message: 'yr Baike Banwa ni hai kal',
                //   time: '09:10 am',
                //   id: 8,
                // ),
                // CustomChate_tile(
                //   name: 'Shariq',
                //   message: 'yr kal dinner hai na?',
                //   time: '09:10 am',
                //   id: 9,
                // ),
                // CustomChate_tile(
                //   name: 'Sultan Qasam',
                //   message: 'Yr hamari tu qismat yaha lay aai',
                //   time: '09:10 am',
                //   id: 10,
                // ),
                // CustomChate_tile(
                //   name: 'Asif Bhai',
                //   message: 'Han Bhai Kiya chal Rahan Hai',
                //   time: '09:10 am',
                //   id: 11,
                // ),
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
        ),
      ),
    );
  }
}
