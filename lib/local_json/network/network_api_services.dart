import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pruduct_management_app/local_json/network/base_api_services.dart';

class  NetworkApiServices extends BaseApiServices {

  @override
  Future<Map<String, dynamic>> getApi(String url) async {
    try {
      String data = await rootBundle.loadString(url); // Ensure the file exists at the path
      return json.decode(data) as Map<String, dynamic>;
    } catch (error) {
      throw Exception('Error while getting data: $error');
    }
  }


}
  // static const _jsonDir = 'assets/json/signin.json';
  // static const _jsonExtension = '.json';
  //
  // Future mockApiCall(String file) async {
  //   //final resourcePath = _jsonDir + file + _jsonExtension;
  //   String data = await rootBundle.loadString(_jsonDir);
  //   final jsonResult = json.decode(data);
  //   return MainResponse.fromJson(jsonResult);
  // }
  //
  // Future<dynamic> mockApiCallEmptyResponse() async {
  //   return "";
  // }
