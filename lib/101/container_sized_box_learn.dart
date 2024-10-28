import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox( 
          width: 200,
          height: 200,
          child: Text('a' * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b' * 50)
            ),
            Container(
              width: 50,
              height: 50,
              constraints: const BoxConstraints(maxWidth: 150, minWidth: 50, maxHeight: 100),
              child: Text('aa' * 100),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: projectUtility.boxDecoration,
              ),
        ] 
      ) 
    );
  }
}

class projectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.red,
    shape: BoxShape.circle,
    border: Border.all(width: 10)
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration():super(
    color: Colors.red,
    shape: BoxShape.circle,
    border: Border.all(width: 10)
  );
}