import 'package:flutter/material.dart';
import '../../utils/app_constant.dart';

class MianScreen extends StatelessWidget {
  const MianScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appMainColor,
        title: Text(AppConstant.appMainName),
        centerTitle: true,
      ),
    );
  }
}
