import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:weatherapp/provider/weather_data_provider.dart';
import 'package:weatherapp/screens/home_screen/widget/list_day.dart';

import 'package:weatherapp/screens/home_screen/widget/weather_details.dart';
import 'package:weatherapp/screens/weather_search_screen/weather_api_provider.dart';
// import 'package:weatherapp/data/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 15,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/png/Wallpaper.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Consumer<WeatherApiProvider>(
              builder: (context, value, child) => value.weather == null
                  ? const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        WeatherSearch(),
                        Center(
                          child: Text('No weather data found'),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // ...weatherDataProvider.weather
                        //     .map((weather) => CityName(weather: weather)),
                        // Weather Icon
                        // WeatherIcon(weather: value.weather!),
                        const WeatherSearch(),
                        const SizedBox(
                          height: 10,
                        ),
                        WeatherIcon(weather: value.weather!),
                        const SizedBox(
                          height: 25,
                        ),

                        // Weather Temperature in Degree
                        WeatherDeg(weather: value.weather!),
                        const SizedBox(
                          height: 20,
                        ),
                        // weather type raining, wind and others
                        WeatherType(weather: value.weather!),
                        const SizedBox(
                          height: 30,
                        ),
                        WeatherDetails(
                          weather: value.weather!,
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        Container(
                          height: 0.5,
                          decoration: const BoxDecoration(
                            color: Colors.white70,
                          ),
                        ),

                        const SizedBox(
                          height: 30,
                        ),
                        // Week Forecast Page
                        const Text(
                          'Week Forecast',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ListDay(weather: value.weather!),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}





 // final data = Weather(
    //   city: 'Zegreb',
    //   daytime: "Morning",
    //   imageURL: 'assets/images/png/weather.png',
    //   temperature: '20',
    //   weathertype: 'Rainy',
    //   desc:
    //       'Expect rainy weather today, so it\'s a good idea to grab your umbrella and put on a waterproof jacket before heading out. Don\'t forget your rain boots to keep your feet dry.',
    //   day: 'Today',
    //   time: '3-8-24',
    //   tempstart: 16,
    // );