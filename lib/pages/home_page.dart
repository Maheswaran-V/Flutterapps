import 'package:flutter/material.dart';
import 'package:newflutter/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Mahes"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CardWidget(),
              const Row(
                children: [
                  Expanded(
                    child: CardWidget(),
                  ),
                  Expanded(
                    child: CardWidget(),
                  )
                ],
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/yeah.png'),
                ),
              ),
            ],
          ),
        ));
  }
}
