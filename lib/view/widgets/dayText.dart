import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:weatherapp/utils/font.dart';
class DayText extends StatelessWidget {
  DayText({super.key});
  final HomeController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Text(
        "${DateFormat("EEEE").format(controller.now)}",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: fontLarge(MediaQuery.of(context).size.width)
        ),
    );
  }
}
