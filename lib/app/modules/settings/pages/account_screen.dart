import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: AppColors.tealGreen,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Account"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.security,
                    size: 32,
                    color: AppColors.blueGrey,
                  )),
              title: const Text(
                "Security notifications",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.pending,
                    size: 32,
                    color: AppColors.blueGrey,
                  )),
              title: const Text(
                "Two-step verification",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.exit_to_app,
                    size: 32,
                    color: AppColors.blueGrey,
                  )),
              title: const Text(
                "Change number",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.description,
                    size: 32,
                    color: AppColors.blueGrey,
                  )),
              title: const Text(
                "Request account info",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add_alt,
                    size: 32,
                    color: AppColors.blueGrey,
                  )),
              title: const Text(
                "Add account",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 32,
                    color: AppColors.blueGrey,
                  )),
              title: const Text(
                "Delete account",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
