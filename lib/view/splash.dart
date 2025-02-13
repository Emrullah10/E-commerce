import 'package:ecommerce/constant/constant.dart';
import 'package:ecommerce/generated/assets.dart';
import 'package:ecommerce/view/home.dart';
import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Grock.toRemove(HomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
        child: Image.asset(Assets.resourcesImagesImSplash),
      ),
    );
  }
}
