import 'package:andisplash/screen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashScreenProvider with ChangeNotifier {
  Future<dynamic> redirectScreen() async {
    await Future.delayed(const Duration(seconds: 5))
        .then((value) => {Get.offAll(const HomePage())});
  }
}
