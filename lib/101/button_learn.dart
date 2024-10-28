import "package:flutter/material.dart";

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('ligma', style: Theme.of(context).textTheme.labelLarge),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Data')),
          IconButton( // Standart Icon button
            onPressed: () {},
            icon: const Icon(Icons.access_alarm)),
          FloatingActionButton( // Icon with Hovered button
            onPressed: () {
              //send request to service
              //design pages color         **Examples**
            },
            child: const Icon(Icons.add_link_sharp),
          ),
          OutlinedButton( // u surprised outlined button
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              //shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
            ),
            onPressed: () {},
            child: const Text('data')
          ),
          InkWell( // whenewer u want custom button
            onTap: () {}, 
            child: const Text('custom'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              iconColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            onPressed: () {},
            child:  Padding(

              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
              child: Text('Place Bid', style: Theme.of(context).textTheme.headlineMedium,),
            )
            ),
        ],
      ),
    );
  }
}