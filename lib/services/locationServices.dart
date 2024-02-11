import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
class LocationServices{

  Future<String>currentCity()async{
    LocationPermission permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
    }

    Position position=await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high
    );
    List<Placemark>placemarks=await placemarkFromCoordinates(position.latitude,position.longitude);
    String? cityName=placemarks[0].administrativeArea;
    return cityName!;
  }
}
