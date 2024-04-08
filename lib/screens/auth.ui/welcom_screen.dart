import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app_constant.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppConstant.appScendoryColor,
        title: const Text(
          "Welcome to my app",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: AppConstant.appScendoryColor,
              child: Lottie.asset("assets/images/splash_icon.json"),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: const Text(
                  "Happy Shopping",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: Get.height / 12,
            ),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appScendoryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    "assets/images/google.png",
                    width: Get.width / 10,
                    height: Get.height / 10,
                  ),
                  label: const Text(
                    "Sing in with google",
                    style: TextStyle(
                        color: AppConstant.appTextColor, fontSize: 18),
                  ),
                  onPressed: null,
                ),
              ),
            ),
            SizedBox(height: Get.height / 50),
            Material(
              child: Container(
                width: Get.width / 1.2,
                height: Get.height / 12,
                decoration: BoxDecoration(
                  color: AppConstant.appScendoryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  icon: Image.asset(
                    "assets/images/mail.png",
                    width: Get.width / 10,
                    height: Get.height / 10,
                  ),
                  label: const Text(
                    "Sing in with email",
                    style: TextStyle(
                        color: AppConstant.appTextColor, fontSize: 18),
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
