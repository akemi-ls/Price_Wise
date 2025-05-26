
import 'package:shared_preferences/shared_preferences.dart';
import 'package:price_wise/screen/Profile/user.dart';

class UserPreferences {
  static const _userKey = 'user_data';

  // Save user data to shared preferences
  static Future<void> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    final userMap = user.toMap();
    await prefs.setString(
        _userKey, userMap.toString()); // Save the user as a string map
  }

  // Load user data from shared preferences
  static Future<User?> loadUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userString = prefs.getString(_userKey);

    if (userString != null) {
      // Convert the string back to a map
      final userMap = _convertStringToMap(userString);
      return User.fromMap(userMap); // Create a User object from the map
    }
    return null; // Return null if no user is stored
  }

  // Helper method to convert string to map
  static Map<String, String> _convertStringToMap(String userString) {
    final Map<String, String> userMap = {};

    // Clean up the string and convert it into a Map
    userString =
        userString.replaceAll(RegExp(r'[{}]'), ''); // Remove curly braces
    final entries = userString
        .split(','); // Split the string by commas to get key-value pairs

    for (var entry in entries) {
      final pair = entry.split(':');
      if (pair.length == 2) {
        userMap[pair[0].trim()] =
            pair[1].trim(); // Add key-value pairs to the map
      }
    }

    return userMap;
  }
}
