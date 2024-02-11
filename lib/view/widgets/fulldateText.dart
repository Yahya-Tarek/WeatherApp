import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:weatherapp/utils/font.dart';
class FullDateText extends StatelessWidget {
  FullDateText({super.key});
  final HomeController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Text(
      "${DateFormat.yMd().format(controller.now)}",
      style: TextStyle(
          color: Colors.white,
          fontSize: fontSmall(MediaQuery.of(context).size.width)
      ),
    );
  }
}
