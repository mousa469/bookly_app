import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final _apiKey = "AIzaSyDiE6OnQQYkKlLUhjChYMwtVFGqAZDSUWw";
  Dio _dio = Dio();

  Future<Map<String, dynamic>>  get({required String endPoint}) async {
    Response response = await _dio.get("$_baseUrl$endPoint$_apiKey");
    return response.data;
  }
}
