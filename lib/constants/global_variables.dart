import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String uri_test =
    'https://api.thingspeak.com/channels/2212982/feeds.json?api_key=CG6P48SMERT5ZWFG&results=2';

Future<Map<String, dynamic>> _load() async {
  http.Response res =
      await http.get(Uri.parse(uri_test), headers: <String, String>{
    'Content-type': 'application/json; charset=utf-8',
  });
  // for (int i = 0; i <= 0; i++) {
  //   iotdata.add(iotList.fromJson(jsonEncode(jsonDecode(res.body))));
  var iotFeeds;
  dynamic randomTest =
      iotFeeds.fromJson(jsonEncode(jsonDecode(res.body))).feeds[1];
  return randomTest;
}

dynamic globalResult = _load();
