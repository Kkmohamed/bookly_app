import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with ApiServer');
      case DioExceptionType.badResponse:
        {
          if (dioError.response != null &&
              dioError.response?.statusCode != null &&
              dioError.response?.statusMessage != null) {
            return ServerFailure(
              'Received invalid status code: ${dioError.response?.statusCode} - ${dioError.response?.statusMessage}',
            );
          } else {
            return ServerFailure('Unknown Error');
          }
        }
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps there was an error, Please try again!');
    }
  }
}
