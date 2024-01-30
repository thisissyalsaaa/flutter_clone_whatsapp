import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: AppColors.tealGreen,
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const Text("Privacy"),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: ListTile(
              subtitle: Text("Who can see my personal info"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: ListTile(
              title: Text("Last seen and online"),
              subtitle: Text("Nobody"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: ListTile(
              title: Text("Profile photo"),
              subtitle: Text("Everyone"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: ListTile(
              title: Text("About"),
              subtitle: Text("Everyone"),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: Text("Status"),
              subtitle: Text("33 contacts excluded"),
            ),
          ),
        ],
      ),
    );
  }
}
