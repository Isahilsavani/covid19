import 'dart:convert';

Covid covidFromJson(String str) => Covid.fromJson(json.decode(str));

String covidToJson(Covid data) => json.encode(data.toJson());

class Covid {
  Covid({
    this.activeCasesText,
    this.countryText,
    this.lastUpdate,
    this.newCasesText,
    this.newDeathsText,
    this.totalCasesText,
    this.totalDeathsText,
    this.totalRecoveredText,
  });

  String? activeCasesText;
  String? countryText;
  String? lastUpdate;
  String? newCasesText;
  String? newDeathsText;
  String? totalCasesText;
  String? totalDeathsText;
  String? totalRecoveredText;

  factory Covid.fromJson(Map<String, dynamic> json) => Covid(
    activeCasesText: json["Active Cases_text"] ?? ["0"],
    countryText: json["Country_text"],
    lastUpdate: json["Last Update"],
    newCasesText: json["New Cases_text"],
    newDeathsText: json["New Deaths_text"],
    totalCasesText: json["Total Cases_text"],
    totalDeathsText: json["Total Deaths_text"],
    totalRecoveredText: json["Total Recovered_text"],
  );

  Map<String, dynamic> toJson() => {
    "Active Cases_text": activeCasesText,
    "Country_text": countryText,
    "Last Update": lastUpdate,
    "New Cases_text": newCasesText,
    "New Deaths_text": newDeathsText,
    "Total Cases_text": totalCasesText,
    "Total Deaths_text": totalDeathsText,
    "Total Recovered_text": totalRecoveredText,
  };
}