// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sign_in_page/presentation/screens/auth_page/auth_page.dart';
import 'package:sign_in_page/presentation/screens/sign_in_page/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const SignInApp());
}

class SignInApp extends StatelessWidget {
  const SignInApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, child!),
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(480, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: '4K'),
            ],
          );
        },
      ),
      debugShowCheckedModeBanner: false,
      title: 'SignInPage',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffFFFFFF),
        primaryColor: Color(0xff373743),
        hintColor: Color(0xff898996),
        hoverColor: Color(0xff686868),
        cardColor: Color(0xffECECEC),
        secondaryHeaderColor: Color(0xffABABAB),
        canvasColor: Color(0xff0029F4),
      ),
      home: SignInPage(),
    );
  }
}
