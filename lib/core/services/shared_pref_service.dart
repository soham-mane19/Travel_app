// lib/services/shared_pref_service.dart
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static const String keyhasSeenOnboardingKey = "hasSeenOnboarding";
  static const String keyLatitude = 'latitude';
  static const String keyLongitude = 'longitude';
  // Save that the user has seen onboarding
  static Future<void> setHasSeenOnboarding(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(keyhasSeenOnboardingKey, value);
  }

  // Check if the user has seen onboarding
  static Future<bool> hasSeenOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(keyhasSeenOnboardingKey) ?? false;
  }

  //save latidude and longitude


 static  Future<void> saveLocation(double latitude ,double longitude)async{

    SharedPreferences prefs =await  SharedPreferences.getInstance();

   await prefs.setDouble(keyLatitude, latitude);
   await prefs.setDouble(keyLongitude,longitude);


  }

// Get latitude and longitude
  static Future<Map<String, double>?> getLocation() async {
    final prefs = await SharedPreferences.getInstance();
    double? lat = prefs.getDouble(keyLatitude);
    double? lon = prefs.getDouble(keyLongitude);
    if (lat != null && lon != null) {
      return {'latitude': lat, 'longitude': lon};
    } else {
      return null;
    }
  }
}
