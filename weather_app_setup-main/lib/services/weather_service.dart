import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  // String baseUrl = 'https://www.metaweather.com';

  // to change API
  // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
  // b588c13259ea55b1c258239dcc31187e

  String baseUrl = 'https://api.openweathermap.org/data/2.5/weather?q=';
  String apiKey = 'b588c13259ea55b1c258239dcc31187e';

  Future<int> getCityId({required String cityName}) async {
    // Uri url = Uri.parse('$baseUrl/api/location/search/?query=$cityName');
    Uri url = Uri.parse('$baseUrl$cityName&appid=$apiKey');

    http.Response response = await http.get(url);
    print(response.body);
    // List<dynamic> data = jsonDecode(response.body);
    Map<String, dynamic> data = jsonDecode(response.body);

    // int cityId = data[0]['woeid'];
    int cityId = data['weather'][0]['id'];
    print(cityName);

    return cityId;
  }

  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weatherData;
    try {
      int id = await getCityId(cityName: cityName);

      // Uri url = Uri.parse('$baseUrl/api/location/$id/');

      Uri url = Uri.parse('$baseUrl$id&appid=$apiKey');

      http.Response response = await http.get(url);

      Map<String, dynamic> jsonData = jsonDecode(response.body);
      print(jsonData);

      // Map<String, dynamic> data = jsonData['consolidated_weather'][0];
      // Map<String, dynamic> data = jsonData['weather'][0];
            Map<String, dynamic> data = jsonData;

      print(data);

      weatherData = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }

    return weatherData;
  }
}
