
String getweatherImage(String? weatherCondition){
  if(weatherCondition==null)return 'assets/images/rain_img.jpg';
  switch(weatherCondition.toLowerCase()){
    case 'clouds':
    case 'mist':
    case 'smoke':
    case 'haze':
    case 'dust':
    case 'fog':
        return 'assets/images/cloud_img.jpg';
    case 'rain':
    case 'drizzle':
    case 'shower rain':
        return 'assets/images/rain_img.jpg';
    case 'thunderstorm':
        return 'assets/images/thunder_img.jpg';
    case 'clear':
        return 'assets/images/clear_img.jpg';
    default:
        return 'assets/images/clear_img.jpg';
  }
}

String getweatherIcon(String? weatherCondition){
  if(weatherCondition==null)return 'assets/icons/rain_icon.png';
  switch(weatherCondition.toLowerCase()){
    case 'clouds':
    case 'mist':
    case 'smoke':
    case 'haze':
    case 'dust':
    case 'fog':
      return 'assets/icons/cloud_icon.jpg';
    case 'rain':
    case 'drizzle':
    case 'shower rain':
      return 'assets/icons/rain_icon.png';
    case 'thunderstorm':
      return 'assets/icons/thunder_icon.png';
    case 'clear':
      return 'assets/icons/clear_icon.png';
    default:
      return 'assets/icons/clear_icon.png';
  }
}