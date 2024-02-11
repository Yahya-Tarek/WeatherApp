import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget webBody;

  const ResponsiveLayout({super.key, required this.mobileBody, required this.tabletBody,required this.webBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight < 480) {
          return mobileBody;
        } else if(constraints.maxWidth > 480 && constraints.maxWidth <= 960){
          return tabletBody;
        }else{return webBody;}
      },
    );
  }
}