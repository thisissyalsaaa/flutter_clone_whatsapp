import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';

class ChatsPopMenuWidget extends StatelessWidget {
  const ChatsPopMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        offset: const Offset(0, 46),
        child: const Icon(Icons.more_vert),
        onSelected: (String selected) {
          if (selected == "settings_chats") {
            Navigator.pushNamed(context, AppRoutes.settings.path);
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
              value: "New group",
              child: Text("New group"),
            ),
            const PopupMenuItem(
              value: "New broadcast",
              child: Text("New broadcast"),
            ),
            const PopupMenuItem(
              value: "Linked device",
              child: Text("Linked device"),
            ),
            const PopupMenuItem(
              value: "Starred messages",
              child: Text("Starred messages"),
            ),
            const PopupMenuItem(
              value: "settings_chats",
              child: Text("Settings"),
            ),
          ];
        });
  }
}
