import 'package:flutter/material.dart';
 fontLarge(double width){
   var fontSize = 16.0;
   if (width <= 480) {
     return fontSize = 30.0;
   } else if (width > 480 && width <= 960) {
     return fontSize = 36.0;
   } else {
     return fontSize = 42.0;
   }
 }

fontLarger(double width){
  var fontSize = 16.0;
  if (width <= 480) {
    return fontSize = 40.0;
  } else if (width > 480 && width <= 960) {
    return fontSize = 46.0;
  } else {
    return fontSize = 50.0;
  }
}
fontSmall(double width){
  var fontSize = 16.0;
  if (width <= 480) {
    return fontSize = 16.0;
  } else if (width > 480 && width <= 960) {
    return fontSize = 20.0;
  } else {
    return fontSize = 24.0;
  }
}