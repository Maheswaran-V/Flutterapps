import 'package:flutter/material.dart';
import 'package:newflutter/core/notifiers.dart';
import 'widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        // You need to return the MaterialApp widget here
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.blue,
            useMaterial3: true,
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
