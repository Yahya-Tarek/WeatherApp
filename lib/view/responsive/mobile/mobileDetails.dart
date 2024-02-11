import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:weatherapp/utils/font.dart';
import 'package:weatherapp/view/widgets/humidityText.dart';
import 'package:weatherapp/view/widgets/windspeedText.dart';

class MobileDetails extends StatelessWidget {
  const MobileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller)=>Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Weather Details"),
        ),
        backgroundColor: Colors.lightBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  'Humidity',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontLarge(MediaQuery.of(context).size.width)
                  ),),
                SizedBox(width: MediaQuery.of(context).size.width/3,),
                HumidityText(),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text(
                  'Wind Speed',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: fontLarge(MediaQuery.of(context).size.width)
                  ),),
                SizedBox(width: MediaQuery.of(context).size.width/3.5,),
                WindSpeedText(),
              ],
            ),
            Image.asset(
              "assets/images/gif.gif",
             fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
