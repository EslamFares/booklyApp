import 'package:dio/dio.dart';

abstract class Failure {
  final String errMsg;

  const Failure(this.errMsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMsg);
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Connection cancel with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error with ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SoketException')) {
          return ServerFailure('uknown with ApiServer');
        }
        return ServerFailure('UnExpection Error, please try later!');
      default:
        return ServerFailure('Opps There was Error ,please try later .... ');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic respons) {
    if (statusCode == 401 || statusCode == 403) {
      return ServerFailure(respons['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later .... ');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try later .... ');
    } else {
      return ServerFailure('Opps There was Error ,please try later .... ');
    }
  }
}
