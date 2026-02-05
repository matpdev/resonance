import "package:flutter/material.dart";
import 'package:resonance/utils/enums.dart';
import 'package:resonance/controllers/request_controller.dart';
import 'package:dio/dio.dart';

class RequestContext extends ChangeNotifier {
  String _method = 'GET';
  final Map<String, dynamic> _headers = {};
  final Map<String, dynamic> _body = {};

  /// Debug
  String responseText = "";

  StatusRequest requestStatus = StatusRequest.None;
  bool isLoading = false;
  TextEditingController url = TextEditingController();

  late Dio requestHandler;

  String get method => _method;
  Map<String, dynamic> get headers => _headers;

  void startRequest() async {
    if (isLoading) return;

    requestHandler = requestHandlerCreate(_method, _headers);

    requestHandler.options.validateStatus = (status) {
      return status != null;
    };

    requestStatus = StatusRequest.Started;
    isLoading = true;
    notifyListeners();

    try {
      Response response = await requestHandler.request(url.text);

      requestStatus = StatusRequest.Finished;
      responseText = response.data.toString();
    } catch (e) {
      responseText = e.toString();
      requestStatus = StatusRequest.Error;
    } finally {
      isLoading = false;
    }
    notifyListeners();
  }

  void changeMethod(String newMethod) {
    _method = newMethod;
    notifyListeners();
  }

  void addHeader(String key, String value) {
    _headers[key] = value;
    notifyListeners();
  }

  void removeHeader(String key) {
    _headers.remove(key);
    notifyListeners();
  }

  void cancelRequest() {
    if (isLoading) {
      isLoading = false;
      notifyListeners();
    }

    requestStatus = StatusRequest.Canceled;
    notifyListeners();
  }
}
