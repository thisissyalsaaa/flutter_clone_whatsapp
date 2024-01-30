import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Profile Info",
          style: TextStyle(
            color: AppColors.tealGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: AppColors.tealGreen,
            size: 32,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            children: [
              const Text('Please provide your name and an optional photo'),
              const SizedBox(height: 24),
              
              CircleAvatar(
                backgroundColor: AppColors.grey.shade100,
                radius: 40,
                child: const Icon(
                  Icons.add_a_photo,
                  color: AppColors.grey,
                  size: 32,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Flexible(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your name here',
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.tealGreen),
                        ),
                      ),
                    ),
                  ),
                  const Icon(Icons.mood),
                ],
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                width: 90,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: AppColors.tealGreen,
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
