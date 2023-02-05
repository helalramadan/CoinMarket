import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../constant/constant.dart';

class ApiReop {
  static Dio? _dio = Dio();
  static String api_key = 'aad5bfa6-f447-47c0-89a5-c3c671360c0e';
  static init() {
    _dio = Dio(BaseOptions(
      baseUrl: baseURL,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? params,
  }) async {
    _dio!.options.headers = {
      'X-CMC_PRO_API_KEY': api_key,
    };
    var data = await _dio!.get(url, queryParameters: params);
    // debugPrint(data.toString());
    return data;
  }
}
