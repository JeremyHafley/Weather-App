import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LocationFetchApiCall {
  static Future<ApiCallResponse> call({
    String? apiKey = 'QpPeuhtnVCi/3gUdTQVNYA==AzQaFDhb4iIRxfy1',
    String? lat = '',
    String? lng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'location fetch api',
      apiUrl:
          'https://api.api-ninjas.com/v1/reversegeocoding?lat=$lat&lon=$lng',
      callType: ApiCallType.GET,
      headers: {
        'X-Api-Key': '$apiKey',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].country''',
      ));
  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].state''',
      ));
}

class GetWeatherCall {
  static Future<ApiCallResponse> call({
    String? lat = '',
    String? lng = '',
    String? xRapidAPIKey = 'e08c740d1amshba20980d169e359p123fcfjsnd4b1ae200943',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get weather',
      apiUrl:
          'https://weatherapi-com.p.rapidapi.com/current.json?q=$lat,$lng',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '$xRapidAPIKey',
        'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? temp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.current.temp_f''',
      ));
  static int? uv(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.uv''',
      ));
}

class GetUVCall {
  static Future<ApiCallResponse> call({
    String? xRapidAPIKey = '',
    String? lat = '',
    String? lng = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get UV',
      apiUrl:
          'https://weatherapi-com.p.rapidapi.com/forecast.json?q=$lat,$lng&days=1',
      callType: ApiCallType.GET,
      headers: {
        'X-RapidAPI-Key': '$xRapidAPIKey',
        'X-RapidAPI-Host': 'weatherapi-com.p.rapidapi.com',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? temp(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.current.temp_f''',
      ));
  static int? uv(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.uv''',
      ));
  static List<int>? uVs(dynamic response) => (getJsonField(
        response,
        r'''$.forecast.forecastday[:].hour[:].uv''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.name''',
      ));
  static String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.region''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
