import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weatherapp/models/weatherModel.dart';
class WeatherService{
  static const Base_Url='http://api.openweathermap.org/data/2.5/weather';
  final String apiKey='b68051fdb4b620bf1341e0116869ac3f';

  Future<Weather> getWeather(String cityName)async{
    final dio = Dio();
    final response = await dio.get('$Base_Url?q=$cityName&appid=$apiKey&units=metric}');

    if (response.statusCode == 200) {
      return Weather.fromJson(response.data);
    } else {
      print('${response.statusCode} : ${response.data.toString()}');
      throw Exception("Error  data not found");
    }
  }

}