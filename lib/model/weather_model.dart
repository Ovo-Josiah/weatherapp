class Weather {
  String? cityName;
  String? country;
  String? imageURL;
  String? desc;
  String? weatherType;
  double? temp;
  double? tempM;
  DateTime? time;

  Weather({
    this.cityName,
    this.country,
    this.imageURL,
    this.desc,
    this.temp,
    this.tempM,
    this.time,
    this.weatherType,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        cityName: json['name'],
        country: json['sys']['country'],
        imageURL: json['weather'][0]['icon'],
        desc: json['weather'][0]['description'],
        temp: json['main']['temp'],
        tempM: json['main']['temp_min'],
        weatherType: json['weather'][0]['main'],
      );
}
