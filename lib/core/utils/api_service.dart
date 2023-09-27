import 'package:dio/dio.dart';

class ApiService {
  ApiService(this.dio);
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  Future<Map<String, dynamic>> get({required endPointUrl}) async {
    var response = await dio.get('$_baseUrl$endPointUrl');
    return response.data;
  }
}
