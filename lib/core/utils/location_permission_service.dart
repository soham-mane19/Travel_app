import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:travel_app/core/services/shared_pref_service.dart';

class LocationPermissionService {
  static Future<bool> requestLocationPermission() async {
    var status = await Permission.location.status;

    if (status.isGranted) {
      
      return true;
    } 
    else if (status.isDenied || status.isRestricted) {
      
      status = await Permission.location.request();

      if (status.isGranted) {
        return true;
      } 
      else if (status.isPermanentlyDenied) {
        await openAppSettings();
        return false;
      } 
      else {
        return false;
      }
    } 
    else if (status.isPermanentlyDenied) {
      await openAppSettings();
      return false;
    } 
    else {
      return false;
    }
  }

  

  static void fetchAndSaveLocation() async {
    // Ensure location services are enabled
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      throw Exception('Location services are disabled.');
    }

    // Get current position
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    double latitude = position.latitude;
    double longitude = position.longitude;

    // Save in SharedPreferences

    SharedPrefService.saveLocation(latitude, longitude);
   

    print("✅ Saved Location: Lat=$latitude, Long=$longitude");

    
  }

}

