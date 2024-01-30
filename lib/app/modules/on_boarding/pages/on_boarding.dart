import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';
import 'package:flutter_clone_whatsapp/app/modules/on_boarding/extensions/app_language_extension.dart';

import '../../../config/routers/app_routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                'assets/images/on-boarding.png',
                height: 450,
                width: 450,
              )),
              const SizedBox(height: 32),
              const Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 12),
              const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                      text: 'Read our',
                      style: TextStyle(
                        color: AppColors.blueGrey,
                      ),
                      children: [
                        TextSpan(
                          text: ' Privacy Policy.',
                          style: TextStyle(color: AppColors.blue),
                        ),
                        TextSpan(
                          text: ' Tap "Agree and continue" to accept the',
                        ),
                        TextSpan(
                          text: ' Terms of Service.',
                          style: TextStyle(color: AppColors.blue),
                        ),
                      ])),
              const SizedBox(height: 24),
              SizedBox(
                width: 300,
                height: 45,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.authentication.path);},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        backgroundColor: AppColors.tealGreen,
                      ),
                      child: const Text(
                        "Agree & Continue",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              const SizedBox(height: 64),
              ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        showDragHandle: true,
                        context: context,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        builder: (_) {
                          return Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.clear,
                                      size: 24,
                                      color: AppColors.grey,
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      'App Language',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              ListView.builder(
                                itemCount: AppLanguage.values.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  var appLanguage = AppLanguage.values[index];
                                  return RadioListTile(
                                    value: 'value',
                                    selected: true,
                                    groupValue: 'groupvalue',
                                    title: Text(
                                      appLanguage.name,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                    subtitle: Text(
                                      appLanguage.name,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    onChanged: (value) {},
                                  );
                                },
                              )
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: const Color.fromARGB(255, 246, 241, 241),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.language,
                        color: AppColors.tealGreen,
                        size: 32,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "English",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.tealGreen,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.tealGreen,
                        size: 32,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
