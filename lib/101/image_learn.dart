import "package:flutter/material.dart";

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: PngImage(name: ImageItems().appleWithBookWithoutPath),
          ),
          Image.network('https://transfg/production/animals/american-alligator-01-01.jpg?w=1200&h=1200&auto=compress%2Cformat&fit=crop&dm=1659037399&s=c61aee0b49617b8a74e8abd4d17f72a4',
          errorBuilder: (context, error, StackTrace) => PngImage(name: ImageItems().appleWithBookWithoutPath),
          )
        ]),
    );
  }
}

class ImageItems {
  final String appleWithBook = "9269766.png";
  final String appleWithBookWithoutPath = "9269766";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath, fit: BoxFit.cover,);
  }

  String get _nameWithPath => 'assets/png/$name.png';
}