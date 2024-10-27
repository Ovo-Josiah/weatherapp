import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_model.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key, required this.weather});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        weather.desc.toString(),
        style: const TextStyle(
          fontSize: 11,
          color: Colors.white,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
