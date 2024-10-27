import 'package:weatherapp/model/weather_model.dart';

final day = DateTime.now();

final weatherData = Weather(
  cityName: 'Zagreb',
  country: 'Croatia',
  desc: 'Clear sky',
  imageURL: 'assets/images/png/weather.png',
  temp: 30,
  tempM: 35,
  weatherType: 'Sunny',
  time: DateTime.now(),
);
