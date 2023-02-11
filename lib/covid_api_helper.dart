import 'dart:convert';

import 'package:covid19/covid_model.dart';
import 'package:http/http.dart' as http;

class CovidData {
  CovidData._();

  static final CovidData covidData = CovidData._();

  Future<Covid?> fetchWorldData({required contry}) async {
    http.Response response = await http.get(
      Uri.parse("https://covid-19.dataflowkit.com/v1/$contry"),
    );
    print("+++++++++++++++++++++++++++++++++++++++++++++");
    print("+++++++++++++++++++++++++++++++++++++++++++++");
    print(response.body);
    print("+++++++++++++++++++++++++++++++++++++++++++++");
    print("+++++++++++++++++++++++++++++++++++++++++++++");
    if (response.statusCode == 200) {
      Covid covidData = covidFromJson(response.body);


      return covidData;
    }
    return null;
  }
}