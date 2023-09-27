import 'package:dio/dio.dart';

class ApiService {
  ApiService(this._dio);

  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

  Future<Map<String, dynamic>> get({required endPointUrl}) async {
    var response = await _dio.get('$_baseUrl$endPointUrl');
    return response.data;
  }
}
