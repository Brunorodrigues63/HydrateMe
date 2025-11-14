import 'package:json_annotation/json_annotation.dart';

part 'resetar_senha_request.g.dart';

@JsonSerializable()
class ResetarSenhaRequest {
  final String token;      // Token de reset
  final String novaSenha;  // A nova senha

  ResetarSenhaRequest({
    required this.token,
    required this.novaSenha,
  });

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'novaSenha': novaSenha,
    };
  }
}