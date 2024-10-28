import "package:flutter/material.dart";

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: ElevatedButton(onPressed: () {}, child: Text('Food',
      style: Theme(data: data, child: child),))),
    );
  }
}