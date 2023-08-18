import 'dart:convert';

class iotFeeds {
  final String? id;
  // final int temperature;
  // final int humidity;
  final dynamic feeds;
  iotFeeds({
    this.id,
    // required this.temperature,
    // required this.humidity,
    required this.feeds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      // 'temperature': temperature,
      // 'humidity': humidity,
      'feeds': feeds,
    };
  }

  factory iotFeeds.fromMap(Map<String, dynamic> map) {
    return iotFeeds(
      id: map['id'] != null ? map['id'] as String : null,
      // temperature: map['temperature'] as int,
      // humidity: map['humidity'] as int,
      feeds: map['feeds'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory iotFeeds.fromJson(String source) =>
      iotFeeds.fromMap(json.decode(source) as Map<String, dynamic>);
}
