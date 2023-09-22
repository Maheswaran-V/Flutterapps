import 'package:flutter/material.dart';
import 'package:newflutter/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: kdouble5,
            ),
            Image.asset('images/rocket.png'),
            const Text(
              "Title",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const Text("Description"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
