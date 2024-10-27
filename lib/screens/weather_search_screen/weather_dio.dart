// import 'dart:math';

import 'package:dio/dio.dart';
import 'package:weatherapp/model/weather_model.dart';

class WeatherDio {
  static const baseURL = 'http://api.weatherapi.com/v1//current.json';
  final String apiKey;

  WeatherDio({required this.apiKey});

  Future<Weather> getWeather(String cityName) async {
    final response = await Dio().get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric');

    if (response.statusCode == 200) {
      return Weather.fromJson(response.data);
    } else {
      throw Exception('failed to load weather');
    }
  }
}


// ?q=zagreb&api=cad36f35c4b9d72754183cbb12ff2683'