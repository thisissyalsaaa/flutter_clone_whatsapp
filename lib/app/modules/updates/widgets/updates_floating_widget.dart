import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class UpdatesFloatingWidget extends StatelessWidget {
  const UpdatesFloatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: '2',
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 171, 245, 236),
          mini: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // Atur radius sesuai keinginan untuk membuat sudut melengkung
          ),
          child: const Icon(
            Icons.mode,
            color: AppColors.tealGreen,
          ),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
            heroTag: '1',
            onPressed: () {},
            backgroundColor: AppColors.tealGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), // Atur radius sesuai keinginan untuk membuat sudut melengkung
            ),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            )),
      ],
    );
  }
}
