import 'dart:convert';

class JsonHelper {
  static List<Map<String, String>> parseJsonToList(String jsonString) {
    List<dynamic> decodedJson = jsonDecode(jsonString);
    return decodedJson.map((item) => Map<String, String>.from(item)).toList();
  }
}
