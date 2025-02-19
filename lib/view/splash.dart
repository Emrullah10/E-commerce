import 'package:ecommerce/constant/constant.dart';
import 'package:ecommerce/generated/assets.dart';
import 'package:ecommerce/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Grock.toRemove(BaseScaffold());
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
