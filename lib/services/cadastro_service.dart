import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrate_me/backend/backend_exception.dart';
import 'package:hydrate_me/backend/hydrate_me_api.dart';
import 'package:hydrate_me/backend/model/usuario.dart';

class CadastroService extends ChangeNotifier {
  Future<void> cadastra(Usuario usuario) async {
    try {
      await hydrateMe().criarUsuario(usuario);
    } catch (e) {
      if (e is DioException) {
        throw BackendException.dioException(error: e);
      }

      throw BackendException.otherException();
    }
  }
}
