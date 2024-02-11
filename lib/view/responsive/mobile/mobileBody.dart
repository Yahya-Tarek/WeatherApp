import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/controller/getweatherImages.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:weatherapp/view/responsive/mobile/mobileDetails.dart';
import 'package:weatherapp/view/widgets/dayText.dart';
import 'package:weatherapp/view/widgets/fulldateText.dart';
import 'package:weatherapp/view/widgets/tempText.dart';
import 'package:weatherapp/view/widgets/weatherCondition.dart';


class MobileBody extends StatelessWidget {
   MobileBody({super.key});
   final controller=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller)=>Scaffold(
        body:Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("${getweatherImage(controller.weatherData?.weatherCondition)}",fit: BoxFit.cover,),
            Positioned(
                top: MediaQuery.of(context).size.height/8,
                left: MediaQuery.of(context).size.width/10,
                child: DayText()
            ),
            Positioned(
                top: MediaQuery.of(context).size.height/6,
                left: MediaQuery.of(context).size.width/10,
                child: FullDateText()
            ),
            Positioned(
              left:MediaQuery.of(context).size.width/10,
              bottom: MediaQuery.of(context).size.height/3.5,
              child: Image.asset(
                  "${getweatherIcon(controller.weatherData?.weatherCondition)}",
                  cacheWidth: (MediaQuery.of(context).size.width/5).round(),
                  color: Colors.white),
            ),
            Positioned(
                left:MediaQuery.of(context).size.width/10,
                bottom: MediaQuery.of(context).size.height/4.7,
                child: TempText()
            ),
            Positioned(
                left:MediaQuery.of(context).size.width/10,
                bottom: MediaQuery.of(context).size.height/6.3,
                child: ConidiotnText()
            ),
            Positioned(
                left:MediaQuery.of(context).size.width/3.8,
                bottom: MediaQuery.of(context).size.height/3.4,
                child: IconButton(
                  color: Colors.white,
                  iconSize: 25,
                  icon: const Icon(Icons.arrow_circle_right_rounded,),
                  onPressed: (){
                    Get.to(MobileDetails());
                  },
                )
            ),
          ],
        ),
      ),

    );
  }
}
