import 'package:get/get.dart';
import 'package:weatherapp/models/weatherModel.dart';
import 'package:weatherapp/services/locationServices.dart';
import 'package:weatherapp/services/weatherService.dart';

class HomeController extends GetxController{
  final _WeatherService=WeatherService();
  final  _LocationServices=LocationServices();
  Weather? weatherData;
  DateTime now = DateTime.now();
  _fetchWeather()async{
    String cityName=await _LocationServices.currentCity();
    try{
      final weather=await _WeatherService.getWeather(cityName);
      weatherData=weather;
      update();

    }
    catch(e){
      print(e);
    }
  }
@override
  void onInit() {
  _fetchWeather();
    super.onInit();
  }

}