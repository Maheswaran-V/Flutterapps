import 'package:flutter/material.dart';
import 'package:newflutter/class/item_class.dart';
import 'package:newflutter/core/constants.dart';
import 'package:newflutter/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
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
                style:const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    ),
              ),
              Text("This is the ${box.title} description"),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
