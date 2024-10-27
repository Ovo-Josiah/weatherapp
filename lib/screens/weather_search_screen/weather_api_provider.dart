// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:weatherapp/data/dummy_data.dart';
import 'package:weatherapp/screens/weather_search_screen/weather_dio.dart';

import '../../model/weather_model.dart';

class WeatherApiProvider extends ChangeNotifier {
  Weather? weather;

  final WeatherDio _services =
      WeatherDio(apiKey: 'cad36f35c4b9d72754183cbb12ff2683');

  fetchWeather({required String newCity}) async {
    try {
      final weath = await _services.getWeather(newCity);
      // return weather;
      weather = weath;
      print(weather);

      notifyListeners();
    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }
}
