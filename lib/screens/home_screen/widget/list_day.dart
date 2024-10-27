import 'package:flutter/material.dart';
import 'package:weatherapp/screens/weather_search_screen/weather_search_screen.dart';
import 'package:weatherapp/screens/home_screen/widget/list_day_detail.dart';
import 'package:weatherapp/model/weather_model.dart';

class ListDay extends StatelessWidget {
  const ListDay({
    super.key,
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        1,
        (index) => ListDayDetail(weather: weather),
      ),
    );
  }
}

// City Name
class WeatherSearch extends StatelessWidget {
  const WeatherSearch({super.key});

  // final Weather weather;
  @override
  Widget build(BuildContext context) {
    void openSearchBottom() {
      showModalBottomSheet(
          // isScrollControlled: true,
          context: context,
          builder: (context) {
            return const WeatherSearchScreen();
          });
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Weather Search',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                openSearchBottom();
              },
              child: const Icon(
                Icons.search_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // Text(
        //   weather.cityName.toString(),
        //   style: const TextStyle(
        //     fontSize: 30,
        //     color: Colors.white,
        //   ),
        // ),
      ],
    );
  }
}

// Weather Type
class WeatherType extends StatelessWidget {
  const WeatherType({super.key, required this.weather});

  final Weather weather;
  @override
  Widget build(BuildContext context) {
    return Text(
      weather.desc.toString(),
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}

// Weather Deg
class WeatherDeg extends StatelessWidget {
  const WeatherDeg({super.key, required this.weather});

  final Weather weather;
  @override
  Widget build(BuildContext context) {
    return Text(
      '${weather.temp!.round()}°C',
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 25,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}

// Weather Icon
class WeatherIcon extends StatelessWidget {
  const WeatherIcon({super.key, required this.weather});

  final Weather weather;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          weather.cityName.toString(),
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Image.network(
          weather.imageURL.toString(),
          height: 150,
          width: 150,
        ),
      ],
    );
  }
}

// 
