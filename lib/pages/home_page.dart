import 'package:flutter/material.dart';
import 'package:newflutter/class/item_class.dart';
import 'package:newflutter/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Android Application"),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              CardWidget(
                box: ItemClass(
                  title: 'Rocket',
                  imagepath: 'images/rocket.png',
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Travel",
                        imagepath: "images/travel.png",
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Space",
                        imagepath: "images/space.png",
                      ),
                    ),
                  )
                ],
              ),
              CardWidget(
                box: ItemClass(
                  title: "Yeah",
                  imagepath: "images/yeah.png",
                ),
              ),
            ],
          ),
        ));
  }
}