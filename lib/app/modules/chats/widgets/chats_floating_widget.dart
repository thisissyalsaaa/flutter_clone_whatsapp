import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class ChatsFloatingWidget extends StatelessWidget {
  const ChatsFloatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
            onPressed: () {},
            backgroundColor: AppColors.tealGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), // Atur radius sesuai keinginan untuk membuat sudut melengkung
            ),
            child: const Icon(
              Icons.message,
              color: Colors.white,
            ));
  }
}