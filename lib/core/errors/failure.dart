import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.dioError({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: "Connection time out with apiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: "Send time out with apiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: "Receive time out with apiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMessage:
                "Unable to establish a secure connection. Please try again later.");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
            errMessage: "Request to api Server was cancelled ");
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: "No internet connection ");
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: "un expected error , please try again!");

      default:     
            return ServerFailure(errMessage: "Opps there was an error  , please try later!"); 

            
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response["error"]["message"]);
    } else if (statusCode == 500) {
      return ServerFailure(
          errMessage: "Internal server error, please try later!");
    } else if (statusCode == 404) {
      return ServerFailure(
          errMessage: "your request is not found , please try later!");
    } else {
      return ServerFailure(errMessage: "Opps there was an error  , please try later!");
    }
  }
}
