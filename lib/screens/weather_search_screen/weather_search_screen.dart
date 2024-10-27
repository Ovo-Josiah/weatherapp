import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/weather_search_screen/weather_api_provider.dart';

// import 'package:provider/provider.dart';

class WeatherSearchScreen extends StatefulWidget {
  const WeatherSearchScreen({super.key});

  @override
  State<WeatherSearchScreen> createState() => _WeatherSearchScreenState();
}

class _WeatherSearchScreenState extends State<WeatherSearchScreen> {
  final _stateController = TextEditingController();
  final _countryController = TextEditingController();

  @override
  void dispose() {
    _stateController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Consumer<WeatherApiProvider>(
        builder: (context, value, child) => Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Choose a location',
              style: TextStyle(fontSize: 25, color: Colors.cyan[400]),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: _stateController,
              maxLength: 50,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text('City'),
                hintText: 'Ibadan',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // The Search Button
            ElevatedButton(
              onPressed: () {
                value.fetchWeather(newCity: _stateController.text);
                // print(_stateController.text);
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.cyan),
                foregroundColor: const WidgetStatePropertyAll(Colors.white),
              ),
              child: const Text('Search Location'),
            ),
          ],
        ),
      ),
    );
  }
}
