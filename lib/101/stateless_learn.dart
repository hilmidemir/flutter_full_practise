import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final String textt = "title12";
    final String text = "title2";
    final String text2 = "title3";
    final String text3 = "title4";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(text: textt),
          TitleTextWidget(text: text),
          const SizedBox(height: 16),
          TitleTextWidget(text: text2),
          const SizedBox(height: 16),
          TitleTextWidget(text: text3),
          const _CustomContainer(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), color: Colors.amber),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}