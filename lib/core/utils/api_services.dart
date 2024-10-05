import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = "https://www.googleapis.com/books/v1/";
  final _apiKey = "AIzaSyDiE6OnQQYkKlLUhjChYMwtVFGqAZDSUWw";
  final Dio dio;
  ApiServices({
    required this.dio,
  });

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get("$_baseUrl$endPoint&key=$_apiKey");
    return response.data;
  }
}
