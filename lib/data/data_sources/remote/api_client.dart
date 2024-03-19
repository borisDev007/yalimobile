import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'api_constant.dart';
import 'api_exception.dart';

class ApiClient{

  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient(){
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
  }
  //*********GET REQUEST***********
  Future<Response> getRequest ({required String path}) async {
    try {
      // 404
      var response = await dio.get(path);
        debugPrint(response.statusCode.toString());
        return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
  //*********POST REQUEST***********
  Future<Response> postRequest ({required String path, required dynamic body}) async {

    final options= Options(
    headers: {"Authorization": "Beaered"},
    );

    try {
      // 404
      var response = await dio.post(baseOptions.baseUrl+path, data: body, options: options);
      debugPrint(response.statusCode.toString());
      debugPrint(response.data.toString());
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

}

