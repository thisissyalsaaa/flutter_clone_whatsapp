import 'package:flutter/material.dart';
import 'package:flutter_clone_whatsapp/app/config/routers/app_routes.dart';
import 'package:flutter_clone_whatsapp/app/modules/authentication/pages/authentication_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/authentication/pages/verify_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/camera/pages/camera_previews_widget.dart';
import 'package:flutter_clone_whatsapp/app/modules/main/pages/main_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/on_boarding/pages/on_boarding.dart';
import 'package:flutter_clone_whatsapp/app/modules/profile/pages/profile_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/profiles/pages/profiles_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/settings/pages/account_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/settings/pages/privacy_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/settings/pages/settings_screen.dart';
import 'package:flutter_clone_whatsapp/app/modules/splash/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clone WhatsApp',
      initialRoute: AppRoutes.main.path,
      routes: {
        AppRoutes.splash.path: (context) {
          return const SplashScreen();
        },
        AppRoutes.onBoarding.path: (context) {
          return const OnBoardingScreen();
        },
        AppRoutes.authentication.path: (context) {
          return const AuthenticationScreen();
        },
        AppRoutes.verification.path: (context) {
          return const VerificationScreen();
        },
        AppRoutes.profile.path: (context) {
          return const ProfileScreen();
        },
        AppRoutes.main.path: (context) {
          return const MainScreen();
        },
        AppRoutes.settings.path: (context) {
          return const SettingsScreen();
        },
        AppRoutes.profiles.path: (context) {
          return const ProfilesScreen();
        },
        AppRoutes.account.path: (context) {
          return const AccountScreen();
        },
        AppRoutes.privacy.path: (context) {
          return const PrivacyScreen();
        },
        AppRoutes.camera.path: (context) {
          return const CameraPreviewsScreen();
        },
      },
    );
  }
}
