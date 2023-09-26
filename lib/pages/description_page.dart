import 'package:flutter/material.dart';
import 'package:newflutter/class/item_class.dart';
import 'package:newflutter/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontNumSize = 25.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(widget.box.title),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Information has clicked"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info_outline),
          ),
          const SizedBox(
            width: 15.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kdouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagepath),
              const SizedBox(
                height: kdouble10,
              ),
              Wrap(
                spacing: kdouble20,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontNumSize = 20.0;
                      });
                    },
                    child: const Text("Small Title"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontNumSize = 45.0;
                      });
                    },
                    child: const Text("Medium Title"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontNumSize = 75.0;
                      });
                    },
                    child: const Text("Large Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontNumSize = 200.0;
                      });
                    },
                    child: const Text("Huge Title"),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: fontNumSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                paratravel,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kdouble10)
            ],
          ),
        ),
      ),
    );
  }
}
