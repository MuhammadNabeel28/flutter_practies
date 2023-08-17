import 'package:flutter/material.dart';

// ignore: camel_case_types
class CustomChate_tile extends StatelessWidget {
  final String? name;
  final String message;
  final String time;
  final int id;

  const CustomChate_tile({
    super.key,
    this.name,
    required this.message,
    required this.time,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    Widget? leadingWidget;

    if (id == 1) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('assets/images/2V5A1808.JPG'),
      );
    }
    if (id == 2) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
            'assets/images/325711072_725168742263342_663843873721411951_n.jpg'),
      );
    }
    if (id == 3) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/1674135605593.jpeg',
        ),
      );
    }
    if (id == 4) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/325186779_779333483551058_8052260395642593328_n.jpg',
        ),
      );
    }
    if (id == 5) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/337095017_905509594023617_7017272890921939811_n.jpg',
        ),
      );
    }
    if (id == 6) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/39217465_1914952361858899_8633630219174936576_n.jpg',
        ),
      );
    }
    if (id == 7) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/367392987_10227852330806354_7272153704099510355_n.jpg',
        ),
      );
    }
    if (id == 8) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/14724580_1695105717482620_6318341461826430992_n.jpg',
        ),
      );
    }
    if (id == 9) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/52156625_118351149253223_8681262965560705024_n.jpg',
        ),
      );
    }
    if (id == 10) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/366970761_9692699297468512_7675436619217657082_n.jpg',
        ),
      );
    }
    if (id == 11) {
      leadingWidget = const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'assets/images/964132_10151511038244398_875983140_o.jpg',
        ),
      );
    }

    return ListTile(
      tileColor: Colors.white,
      leading: leadingWidget,
      title: Text(name ?? 'Anonymous'),
      subtitle: Text(message),
      trailing: Text(time),
    );
  }
}
