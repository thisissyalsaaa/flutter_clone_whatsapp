import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Verifying your number",
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
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: 'Waiting to automaticaly detect an SMS sent to',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: " +6282386151016.",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: " Wrong number?",
                        style: TextStyle(color: AppColors.blue),
                      ),
                    ])
                    ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: TextFormField(
                readOnly: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  hintText: '- - -   - - -',
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.tealDarkGreen),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Enter 6-digit code',
                style: TextStyle(
                  color: Colors.black,
                )),
            const SizedBox(height: 24),
            const Text("Didn't receive code?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                )),
            const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                    text: 'You may request a new code in',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: " 1:21",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                      
                    ])),
          ],
        ),
      ),
    );
  }
}
