import 'package:ecomress/screens/auth.ui/singup_screen.dart';
import 'package:ecomress/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SinginScreen extends StatefulWidget {
  const SinginScreen({super.key});

  @override
  State<SinginScreen> createState() => _SinginScreenState();
}

class _SinginScreenState extends State<SinginScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.appScendoryColor,
          title: const Text(
            "Sing In",
            style: TextStyle(
                color: AppConstant.appTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          centerTitle: true,
        ),
        // ignore: avoid_unnecessary_containers
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? const Text("Welcome to my app")
                    : Container(
                        color: AppConstant
                            .appScendoryColor, // Background color for the inner Column
                        child: Column(
                          children: [
                            Lottie.asset("assets/images/splash_icon.json"),
                          ],
                        ),
                      ),
                SizedBox(height: Get.height / 20),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: const Icon(Icons.email),
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        cursorColor: AppConstant.appScendoryColor,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: const Icon(Icons.password),
                            suffixIcon: const Icon(Icons.visibility_off),
                            contentPadding:
                                const EdgeInsets.only(top: 2.0, left: 8.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: AppConstant.appScendoryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: Get.height / 20),
                Material(
                  child: Container(
                    width: Get.width / 2,
                    height: Get.height / 18,
                    decoration: BoxDecoration(
                      color: AppConstant.appScendoryColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const TextButton(
                      onPressed: null,
                      child: Text(
                        "SING In",
                        style: TextStyle(
                            color: AppConstant.appTextColor, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: AppConstant.appScendoryColor, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => const SingUpScreen()),
                      child: const Text(
                        "SING Up",
                        style: TextStyle(
                            color: AppConstant.appScendoryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
