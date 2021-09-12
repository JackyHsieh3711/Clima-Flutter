import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = new Location();
    await location.getCurrentLocation();
    print('## latitude ${location.latitude} longitude ${location.longitude}');
    getData();
  }

//   const apiKey = 'e72ca729af228beabd5d20e3b7749713';
// const sampleOpenWeatherMapURL = 'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=e72ca729af228beabd5d20e3b7749713';
// const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';
  void getData() async {
    print('getData');
    
    const sampleOpenWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=-122&appid=e72ca729af228beabd5d20e3b7749713';
    var url = Uri.parse(sampleOpenWeatherMapURL);
    var res = await http.get(url);
    print(res.body);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
