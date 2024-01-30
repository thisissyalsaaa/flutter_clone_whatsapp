import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/config/themes/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, AppRoutes.onBoarding.path);
    });

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(child: Image.asset('assets/images/logo.png')),
            const Spacer(),
            const Text(
              "from",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                letterSpacing: 2,
              ),
            ),
            const Text(
              "Meta",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.green,
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
