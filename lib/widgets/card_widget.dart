import 'package:flutter/material.dart';
import 'package:newflutter/class/item_class.dart';
import 'package:newflutter/core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: kdouble5,
            ),
            Image.asset(box.imagepath),
            Text(
              box.title,
              style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const Text("This is Description"),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
