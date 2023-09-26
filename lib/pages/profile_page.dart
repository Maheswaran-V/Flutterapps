import 'package:flutter/material.dart';
import 'package:newflutter/core/constants.dart';
import 'package:newflutter/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: const Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/yeah.png"),
              radius: 60,
            ),
            SizedBox(height: kdouble20),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Maheswaran V"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("maheswaran@senstornet.com"),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text("Chennai"),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
        ),
        );
  }
}
