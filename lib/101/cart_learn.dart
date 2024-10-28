import "package:flutter/material.dart";

class CartLearn extends StatelessWidget {
  const CartLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            color: Colors.white,
            shape: StadiumBorder(),
            child: SizedBox(height: 100, width: 500,),
          ),
          Card(
            child: const SizedBox(height: 100, width: 100,),
          ),
          _CustomCard(child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: Text('Aliş'),),
          ))
          ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({super.key, required this.child});
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
  final Widget child;
  @override
  Widget build(BuildContext context) {
    
    return Card(
      margin: ProjectMargins.cardMargin,
      shape: roundedRectangleBorder,
      child: child,
    );
  }

}