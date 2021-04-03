import 'dart:convert';

import 'package:http/http.dart' as http;

class WorldData {
  Future getWorldData() async {
    try {
      http.Response response = await http.get(
        Uri.parse("https://corona.lmao.ninja/v2/all"),
      );
      var data = jsonDecode(response.body);
      print(data);
      return data;
    } catch (e) {
      print(e);
    }
  }
}
