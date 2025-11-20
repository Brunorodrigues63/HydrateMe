import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrate_me/backend/backend_exception.dart';
import 'package:hydrate_me/backend/hydrate_me_api.dart';
import 'package:hydrate_me/backend/request/calcular_request.dart';
import 'package:hydrate_me/backend/response/calcular_response.dart';

class CalcularService extends ChangeNotifier {
  Future<CalcularResponse> calcular(CalcularRequest request) async {
    try {
      final resposta = await hydrateMe().calcular(request);
      return resposta;
    } catch (e) {
      if (e is DioException) {
        throw BackendException.dioException(error: e);
      }

      throw BackendException.otherException();
    }
  }
}
