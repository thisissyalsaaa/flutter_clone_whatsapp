import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';

class CallsPopMenuWidget extends StatelessWidget {
  const CallsPopMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        offset: const Offset(0, 46),
        child: const Icon(Icons.more_vert),
        onSelected: (String selected) {
          if (selected == "settings_calls") {
            Navigator.pushNamed(context, AppRoutes.settings.path);
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
              value: "Clear call log",
              child: Text("Clear call log"),
            ),
            const PopupMenuItem(
              value: "settings_calls",
              child: Text("Settings"),
            ),
          ];
        });
  }
}
