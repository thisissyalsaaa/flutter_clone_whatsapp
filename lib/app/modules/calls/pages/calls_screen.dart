import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.tealGreen,
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              title: Text('Create call link',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
              subtitle: Text('Share a link for your WhatsApp call'),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Recent",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.shade200,
                radius: 32,
                child: Icon(
                  Icons.mood,
                  color: Colors.red[400],
                  size: 40,
                ),
              ),
              title: const Text('Rian (5)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
              subtitle: const Row(
                children: [
                  Icon(
                    Icons.call_received,
                    color: AppColors.tealGreen,
                  ),
                  Text('Today, 11.03 AM')
                ],
              ),
              trailing: IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.call,
                  color: AppColors.tealGreen,
                  size: 30,
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.grey.shade200,
                radius: 32,
                child: Icon(
                  Icons.looks,
                  color: Colors.red[400],
                  size: 40,
                ),
              ),
              title: const Text('Bobiii (19)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  )),
              subtitle: const Row(
                children: [
                  Icon(
                    Icons.call_received,
                    color: Colors.red,
                  ),
                  Text('Today, 8.03 AM')
                ],
              ),
              trailing: IconButton(
                onPressed: () {
                },
                icon: const Icon(
                  Icons.call,
                  color: AppColors.tealGreen,
                  size: 30,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock),
                  Text.rich(
                    TextSpan(text: " Your personal calls are ", children: [
                      TextSpan(
                          text: "end-to-end encrypted",
                          style: TextStyle(
                            color: AppColors.green,
                          ))
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
