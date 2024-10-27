import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_model.dart';

class ListDayDetail extends StatelessWidget {
  const ListDayDetail({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(5),
      ),
      // Content in the card
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Date anad Time Column
          const Column(
            children: [
              Text(
                'Today',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text('7-8-24',
                  // weather.time.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${weather.temp!.round()}°C',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                '${-weather.tempM!.round()}°C',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
