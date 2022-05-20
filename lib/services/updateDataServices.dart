import 'dart:math';

import 'package:dio/dio.dart';

import '../models/updateDataModel.dart';

class UpdateDataServices {
  Dio _dio = Dio();
  String token =
      '''eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjM4MjksImV4cCI6MTk2ODM4NTcyNH0.31XjyvMakf0cuMqVbfUKCBskxpnDOq7fleWHvmG9zH4''';

  Future<UpdateDataModel?> getApiData() async {
    try {
      Response userData = await _dio.get(
        'https://api.holedo.com/rest/users/me',
        queryParameters: {'apikey': 'test'},
        options: Options(
          headers: {'AuthApi': 'Bearer $token}'},
        ),
      );
      if (userData.statusCode == 200) {
        print('User Info: ${userData.data}');
        return UpdateDataModel.fromJson(userData.data);
      }
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
  }

  Future<User?> updateApiData(
      {required User userInfo}) async {
    try {
      Response response = await _dio.put(
        'https://api.holedo.com/rest/users/me',
        queryParameters: {'apikey': 'test'},
        options: Options(
          headers: {'AuthApi': 'Bearer $token}'},
        ),
        data: userInfo.toJson(),
      );
      print('status::-${response.statusCode}');

      return User.fromJson(response.data);
    } catch (e) {
      print('Error updating user: $e');
    }
  }
}
