import 'package:flutter/material.dart';

class CustomChate_tile extends StatelessWidget {
  const CustomChate_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      tileColor: Colors.black54,
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.amber,
      ),
      title: Text('Nabeel Mansoori'),
      subtitle: Text('Kaha Ho Bhai '),
      trailing: Text('09:00 PM'),
    );
  }
}
