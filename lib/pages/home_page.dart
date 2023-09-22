import 'package:flutter/material.dart';
import 'package:newflutter/class/item_class.dart';
import 'package:newflutter/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Mahes"),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                box: ItemClass(title: "rocket", imagepath: 'images/yeah.png')
                ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(title: "rocket", imagepath: 'images/yeah.png')
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(title: "rocket", imagepath: 'images/yeah.png')
                    ),
                  )
                ],
              ),
              CardWidget(
                box: ItemClass(title: "rocket", imagepath: 'images/yeah.png')
              ),
            ],
          ),
        ));
  }
}
