// lib/services/shared_pref_service.dart
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static const String keyhasSeenOnboardingKey = "hasSeenOnboarding";
  static const String keyhasLogin = 'hasLogin';
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


  //save login 
 
 static Future<void> sethasLogin(bool hasLogin)async{

   final  pref  =await  SharedPreferences.getInstance();
      pref.setBool(keyhasLogin, hasLogin);
 }


  //check is login or not
static Future<bool> hasLogin()async{
   final prefs = await SharedPreferences.getInstance();
   return  prefs.getBool(keyhasLogin) ?? false;
}

}
