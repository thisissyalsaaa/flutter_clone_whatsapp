import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Enter your phone number",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text.rich(TextSpan(
                text: 'WhatsApp will need to verify your account.',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " What's my number?",
                    style: TextStyle(color: AppColors.blue),
                  ),
                ])),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: TextFormField(
              readOnly: true,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Choose a country',
                hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                suffixIcon: Icon(Icons.arrow_drop_down,
                    size: 24, color: AppColors.tealGreen),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.tealGreen),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              children: [
                Flexible(
                    child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 2),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIcon: Icon(Icons.add, size: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.tealGreen
                      ),
                    )
                  ),
                )),
                const SizedBox(width: 30),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColors.tealGreen),
                      ),
                    ),
                ))
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text("Carrier charges may apply"),
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
    );
  }
}
