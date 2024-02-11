

class Weather{
  final String cityName;
  final double temp;
  final String weatherCondition;
  final double humidity;
  final double windSpeed;
  Weather(
      { required this.cityName,
        required this.temp,
        required this.weatherCondition,
        required this.humidity,
        required this.windSpeed
      });
  factory Weather.fromJson(Map<String,dynamic>json){
    return Weather(
        cityName: json['name'],
        temp: json['main']['temp']+.0-273.15,
        weatherCondition:json['weather'][0]['main'],
        humidity: json['main']['humidity']+.0,
        windSpeed: json['wind']['speed']+.0
    );
  }
}