import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:weatherapp/utils/font.dart';
class WindSpeedText extends StatelessWidget {
  WindSpeedText({super.key});
  final HomeController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Text(
      "${controller.weatherData?.windSpeed.round()??"Loading"} km/h",
      style: TextStyle(
          color: Colors.white,

          fontSize: fontLarge(MediaQuery.of(context).size.width)
      ),
    );
  }
}
