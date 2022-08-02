import 'package:flutter/material.dart';
import 'package:nanuricare_yurim/screens/page20.dart';

import 'package:bubble/bubble.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '나누리케어',
      home: Scaffold(
        body: page20()),
      );
  }
}
