import 'package:dartpractice/data-structures/linked_list.dart';
import 'package:flutter/material.dart';

import 'data-structures/maps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LinkedListInDart(),
    );
  }
}

