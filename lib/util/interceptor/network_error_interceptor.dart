import 'package:dio/dio.dart';
import 'package:flutter_template/model/exceptions/bad_request_error.dart';
import 'package:flutter_template/model/exceptions/code_error.dart';
import 'package:flutter_template/model/exceptions/forbidden_error.dart';
import 'package:flutter_template/model/exceptions/general_error.dart';
import 'package:flutter_template/model/exceptions/internal_server_error.dart';
import 'package:flutter_template/model/exceptions/un_authorized_error.dart';

class NetworkErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError err) async {
    if (err == null) return CodeError();
    if (err.response == null) return CodeError();
    final statusCode = err.response.statusCode;
    switch (statusCode) {
      case UnAuthorizedError.statusCode:
        return UnAuthorizedError(err);
      case BadRequestError.statusCode:
        return BadRequestError.parseError(err);
      case ForbiddenError.statusCode:
        return ForbiddenError.parseError(err);
      case InternalServerError.statusCode:
        return InternalServerError(err);
      default:
        return GeneralNetworkError(err);
    }
  }
}
