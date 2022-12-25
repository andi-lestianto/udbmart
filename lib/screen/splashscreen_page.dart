import 'package:andisplash/provider/splashscreen_provider.dart';
import 'package:andisplash/theme/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    Provider.of<SplashScreenProvider>(context, listen: false).redirectScreen();
    return Scaffold(
      backgroundColor: appTheme.clrWhite,
      body: SafeArea(
          child: Stack(
        children: const [
          Align(
              alignment: Alignment(0, 0),
              child: Image(image: AssetImage('assets/logo.png')))
        ],
      )),
    );
  }
}
