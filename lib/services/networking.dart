import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = "b444f08607ace4af5200351fc0d0c32b";

class NetworkHelper {

  NetworkHelper(this.urlString);

  final String urlString;

  Future getData() async {
    // var sampleOpenWeatherMapURL1 = 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';
    var url = Uri.parse(urlString);

    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      print(res.statusCode);
    }
  }

}