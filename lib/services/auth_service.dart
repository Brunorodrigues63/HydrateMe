import 'package:flutter/material.dart';
import 'package:hydrate_me/backend/model/usuario.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthService extends ChangeNotifier {
  String _token = "";
  String _userId = "";
  String _nome = "";
  String _email = "";
  Usuario? _usuario;

  void onLogon(String token) {
    _token = token;

    final decoded = JwtDecoder.decode(_token);

    _userId = decoded["Id"];
    _nome = decoded["Nome"];
    _email = decoded["Email"];

    notifyListeners();
  }

  void onUserInfoLoaded(Usuario usuario) {
    _usuario = usuario;
    notifyListeners();
  }

  void onLogout() {
    _token = "";
    _userId = "";
    _nome = "";
    _email = "";
    _usuario = null;

    notifyListeners();
  }

  bool get isLogado => _token.isNotEmpty;
  String get token => _token;
  String get userId => _userId;
  String get nome => _nome;
  String get email => _email;
  Usuario? get usuario => _usuario;
}
