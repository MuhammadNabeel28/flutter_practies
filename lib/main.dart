import 'package:flutter/material.dart';
import 'package:flutter_practies_aap/profile%20_listtile_view.dart';
// ignore: unused_import
import 'package:flutter_practies_aap/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListTileView(),
    );
  }
}
