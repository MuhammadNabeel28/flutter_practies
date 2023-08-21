import 'package:flutter/material.dart';

// ignore: camel_case_types
class CustomChate_tile extends StatelessWidget {
  // final String? name;
  // final String message;
  // final String time;
  // final int id;

  const CustomChate_tile({super.key
      // this.name,
      // required this.message,
      // required this.time,
      // required this.id,
      });

  @override
  Widget build(BuildContext context) {
    Widget? leadingWidget;

    // if (id == 1) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage('assets/images/2V5A1808.JPG'),
    //   );
    // }
    // if (id == 2) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //         'assets/images/325711072_725168742263342_663843873721411951_n.jpg'),
    //   );
    // }
    // if (id == 3) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/1674135605593.jpeg',
    //     ),
    //   );
    // }
    // if (id == 4) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/325186779_779333483551058_8052260395642593328_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 5) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/337095017_905509594023617_7017272890921939811_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 6) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/39217465_1914952361858899_8633630219174936576_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 7) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/367392987_10227852330806354_7272153704099510355_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 8) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/14724580_1695105717482620_6318341461826430992_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 9) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/52156625_118351149253223_8681262965560705024_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 10) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/366970761_9692699297468512_7675436619217657082_n.jpg',
    //     ),
    //   );
    // }
    // if (id == 11) {
    //   leadingWidget = const CircleAvatar(
    //     radius: 25,
    //     backgroundImage: AssetImage(
    //       'assets/images/964132_10151511038244398_875983140_o.jpg',
    //     ),
    //   );
    // }

    List<Map<String, dynamic>> message_ = [
      {
        'name': 'Nabeel Mansoori',
        'message': 'Where Are You!',
        'time': '09:10 AM',
        'imagepath': 'assets/images/2V5A1808.JPG',
        'imagetype': 'assets',
      },
      {
        'name': 'Afaq Ahmed',
        'message': 'Yes me Comming',
        'time': '09:30 AM',
        'imagepath':
            'https://scontent.fkhi22-1.fna.fbcdn.net/v/t39.30808-6/325711072_725168742263342_663843873721411951_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGGyRSNGxW8Tw7lndeE0EeDbRDceNrb_5JtENx42tv_kgcYha4JimQ6vfyxiHZhFgBiV6Io7JgclnDqwKAN_y-Z&_nc_ohc=Ormfd1CsTs0AX-VKUMH&_nc_ht=scontent.fkhi22-1.fna&oh=00_AfBtCupOg-uqKPJ1HXO7hKD5Tpk7fnGuvvI6j1Iaoj8yzA&oe=64E90E6F',
        'imagetype': 'network',
      },
      {
        'name': 'Bilal Rehman',
        'message': 'acha bhai tu kal join Kerahy ho na?',
        'time': '10:10 PM',
        'imagepath':
            'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1698278400&v=beta&t=qbhfqhUIXQSVvwHZXV1Da16N_AxEm9QwMBdttS27pgY',
        'imagetype': 'network',
      },
      {
        'name': 'Touseef Bhai',
        'message': 'kal Build Realse Kerni Hai',
        'time': '09:30 AM',
        'imagepath':
            'assets/images/325186779_779333483551058_8052260395642593328_n.jpg',
        'imagetype': 'assets',
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: message_.length,
      itemBuilder: (BuildContext context, int index) {
        String imagetype = message_[index]['imagetype'];
        String imagePath = message_[index]['imagepath']; // Corrected key name
        if (imagetype == "assets") {
          leadingWidget = CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imagePath),
          );
        } else if (imagetype == "network") {
          leadingWidget = CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(imagePath),
          );
        }
        return ListTile(
          tileColor: Colors.white,
          leading: message_[index]['imagetype'] == "assets"
              ? CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(imagePath),
                )
              : CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(imagePath),
                ),
          title: Text(message_[index]['name']),
          subtitle: Text(message_[index]['message']),
          trailing: Text(message_[index]['time']),
        );
      },
    );
  }
}
