import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ColorLEarn'),),
      body: Container(
        color: ColorsItems.boksari,
        child: const Text('data'),
      ),
    );
  }
}

class ColorsItems {
  static Color porsche = Color.fromARGB(255, 108, 88, 49);
  static const Color boksari = Color.fromARGB(255, 74, 29, 85);
}