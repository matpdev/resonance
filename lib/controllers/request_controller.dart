import 'package:dio/dio.dart';

Dio requestHandlerCreate(
  String method,
  Map<String, dynamic> headers, {
  String? baseUrl,
}) {
  BaseOptions options = BaseOptions(
    method: method,
    baseUrl: baseUrl ?? "",
    headers: headers,
    validateStatus: (status) {
      return status != null;
    },
  );

  Dio requestHandler = Dio(options);

  return requestHandler;
}
