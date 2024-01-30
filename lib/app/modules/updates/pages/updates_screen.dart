import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                title: const Text('Status',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    )),
                trailing: IconButton(onPressed: () {
                  
                },icon: const Icon(Icons.more_vert))),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: AppColors.grey.shade200,
                    child: const Icon(
                      Icons.person,
                      color: AppColors.grey,
                      size: 40,
                    ),
                  ),
                  const Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.add_circle,
                        size: 28,
                        color: AppColors.tealGreen,
                      ))
                ],
              ),
              title: const Text('My Status',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
              subtitle: const Text('Tap to add status update'),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Recent updates",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.green,
                      width: 3,
                    )),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.grey.shade200,
                  backgroundImage: const AssetImage("assets/images/dinda.jpg"),
                ),
              ),
              title: const Text('Fajrian',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
              subtitle: const Text('21 minutes ago'),
            ),
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.green,
                      width: 3,
                    )),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: AppColors.grey.shade200,
                  backgroundImage: const AssetImage("assets/images/din.jpg"),
                ),
              ),
              title: const Text('Putra',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
              subtitle: const Text('31 minutes ago'),
            ),
          ],
        ),
      ),
    );
  }
}


