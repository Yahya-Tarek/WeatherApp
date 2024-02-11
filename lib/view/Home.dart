import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherapp/controller/homeController.dart';
import 'package:weatherapp/view/responsive/layoutBuilder.dart';
import 'package:weatherapp/view/responsive/mobile/mobileBody.dart';
import 'package:weatherapp/view/responsive/tablet/tabletBody.dart';
import 'package:weatherapp/view/responsive/web/webBody.dart';
class Home extends StatelessWidget {
  Home({super.key});
  final controller=Get.lazyPut(()=>HomeController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ResponsiveLayout(mobileBody: MobileBody(),tabletBody:TabletBody() ,webBody: WebBody(),),
    );
  }
}
