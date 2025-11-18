import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrate_me/backend/backend_exception.dart';
import 'package:hydrate_me/backend/hydrate_me_api.dart';
import 'package:hydrate_me/backend/request/credencial.dart';
import 'package:hydrate_me/services/auth_service.dart';

class LoginService extends ChangeNotifier {
  Future<void> autentica(Credencial credencial) async {
    try {
      final token = await hydrateMe().login(credencial);

      final authProvider = GetIt.I<AuthService>();
      authProvider.onLogon(token.replaceAll(RegExp(r'^"|"$'), ''));
    } catch (e) {
      if (e is DioException) {
        throw BackendException.dioException(error: e);
      }

      throw BackendException.otherException();
    }
  }
}
