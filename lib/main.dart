import 'package:flutter/material.dart';
//import 'package:myapp_week2_3/counter.dart';
import 'package:myapp_week2_3/attraction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Attraction(),
    );
  }
}
