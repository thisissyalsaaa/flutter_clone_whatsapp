import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';

class UpdatesPopMenuWidget extends StatelessWidget {
  const UpdatesPopMenuWidget({
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
        onSelected: (String selected) {
          if (selected == "settings_updates") {
            Navigator.pushNamed(context, AppRoutes.settings.path);
          }
        },
        child: const Icon(Icons.more_vert),
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
              value: "settings_updates",
              child: Text("Settings"),
            ),
          ];
        });
  }
}
