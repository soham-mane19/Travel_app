// lib/services/shared_pref_service.dart
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  static const String keyhasSeenOnboardingKey = "hasSeenOnboarding";

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

}
