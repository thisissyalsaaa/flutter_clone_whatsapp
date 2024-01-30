import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 10),
            child: ListTile(
              leading: Stack(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      shape: BoxShape.rectangle,
                      color: AppColors.grey.shade400,
                    ),
                    child: const Icon(
                      Icons.people,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.add_circle,
                        size: 30,
                        color: AppColors.tealGreen,
                      ))
                ],
              ),
              title: const Text('New community',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
          const Divider(
            color: AppColors.grey, // Warna garis
            thickness: 0.5, // Ketebalan garis
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 10),
            child: ListTile(
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  shape: BoxShape.rectangle,
                  color: const Color.fromARGB(255, 239, 204, 204),
                ),
                child: Icon(
                  Icons.groups,
                  color: Colors.red[500],
                  size: 40,
                ),
              ),
              title: const Text('Meme Seger Spars',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
