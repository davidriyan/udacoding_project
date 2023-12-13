import 'package:flutter/material.dart';
import 'presentation/registration_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBRicxUsTX1U-Qrq4bkCJXVLlhQMlNEXkk",
          appId: "1:311704879639:android:fd9645005dfedf99d99252",
          messagingSenderId: "311704879639",
          projectId: "udacoding-project-58359"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        nextScreen: const RegistrationPage(),
        splash: 'assets/images/google_logo.png',
        splashTransition: SplashTransition.rotationTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        animationDuration: const Duration(seconds: 5),
      ),
    );
  }
}
