import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Create your first note';
  final _description = 'Add a note';
  final _createNote = 'Create a Note';
  final _importNotes = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark,),

      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageItems().appleWithBookWithoutPath),
            _TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _SubTitleWidget(title: _description * 10/*textAlign: TextAlign.left*/), //override
            ),
            const Spacer(), //???

            _CreateButton(context),
            TextButton(onPressed: () {}, child: Text(_importNotes)),
            const SizedBox(height: ButtonHeights.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _CreateButton(BuildContext context) {
    return ElevatedButton(
            onPressed: (){}, 
            child: SizedBox(
              height: ButtonHeights.buttonNormalHeight, 
              child: Center(
                child: Text(
                  _createNote,
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              )
            )
          );
  }
}


///Centered Text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    super.key, this.textAlign = TextAlign.center, required this.title,
  });
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text('Added a note' * 10, 
    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    textAlign: textAlign,);
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
    style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),);
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);

}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}