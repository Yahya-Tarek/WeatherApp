import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:weatherapp/utils/font.dart';
class ConidiotnText extends StatelessWidget {
  ConidiotnText({super.key});
  final HomeController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Text(
      "${controller.weatherData?.weatherCondition??"Loading"} ",
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: fontLarge(MediaQuery.of(context).size.width)
      ),
    );
  }
}
