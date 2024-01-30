import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.profiles.path);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/dinda.jpg'),
                ),
                title: const Text("Adinda Syalsabilla"),
                subtitle: const Text("Battery about to die"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code,
                      color: AppColors.tealGreen,
                      size: 30,
                    )),
              ),
            ),
          ),
          const Divider(
            color: AppColors.grey, // Warna garis
            thickness: 0.5, // Ketebalan garis
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.account.path);
            },
            child: ListTile(
              leading: IconButton(
                  onPressed: () {},
                  icon: Transform.rotate(
                    angle: 1.5,
                    child: Icon(
                      Icons.key,
                      size: 24,
                      color: AppColors.blueGrey.withOpacity(0.6),
                    ),
                  )),
              title: const Text("Account"),
              subtitle: const Text("Security notifications, change number"),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lock,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Privacy"),
            subtitle: const Text("Block contacts, dissappearing messages"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.face,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Avatar"),
            subtitle: const Text("Create, edit, profile photo"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Chats"),
            subtitle: const Text("Themes, wallpapers, chat history"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Notifications"),
            subtitle: const Text("Messages, group & call tones"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Storage and data"),
            subtitle: const Text("Network usage, auto-download"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.lock,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("App language"),
            subtitle: const Text("English (device's language)"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.help,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Help"),
            subtitle: const Text("Help centre, contact us, privacy policy"),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.people,
                  size: 24,
                  color: AppColors.blueGrey.withOpacity(0.6),
                )),
            title: const Text("Invite a friend"),
          ),
        ],
      ),
    );
  }
}
