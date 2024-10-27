import 'package:flutter/material.dart';

import '../model/weather_model.dart';
import 'package:flutter/foundation.dart';

class WeatherDataProvider extends ChangeNotifier {
  // init a state with weather data
  final Weather _weather = Weather(
    cityName: 'Zagreb',
    country: 'Croatia',
    desc: 'Sunny',
    imageURL: 'assets/images/png/weather.png',
    temp: 30,
    tempM: 35,
    weatherType: 'Rainy',
    time: DateTime.now(),
  );

  // final Weather _weather = Weather(
  //   city: 'Zegreb',
  //   daytime: "Morning",
  //   imageURL: 'assets/images/png/weather.png',
  //   temperature: '20',
  //   weathertype: 'Rainy',
  //   desc:
  //       'Expect rainy weather today, so it\'s a good idea to grab your umbrella and put on a waterproof jacket before heading out. Don\'t forget your rain boots to keep your feet dry.',
  //   day: 'Today',
  //   time: '5-8-24',
  //   tempstart: 20,
  // );

  // Write a getter function for the weather
  Weather get weather => _weather;
}
