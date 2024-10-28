import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);
  final String name = 'Hellme';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Salam $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
                'Salam $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
                'Salam $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.pink),
            ),
            
          ]
         )),
    );
  }
}
class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 16,
    color: Colors.lime,
    fontWeight: FontWeight.w600);
}