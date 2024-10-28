import "package:flutter/material.dart";

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('iconLearnView'),),
      body: Column(
        children: [
              IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.blueGrey,
                size: IconSizes.iconSmall2x,
              )),
              const SizedBox(height: 50),
              IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.david,
                size: iconSize.iconSmall,
              )),
              IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSize.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}
class IconColors {
  final Color froly = Color(0xffed617a);
  final Color david = Color(0x6454687a);
}