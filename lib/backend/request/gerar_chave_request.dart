import 'package:json_annotation/json_annotation.dart';

part 'gerar_chave_request.g.dart';

@JsonSerializable()
class GerarChaveResetRequest {
  final String email;  // Ou 'usuarioId', dependendo da sua API

  GerarChaveResetRequest({
    required this.email,  // Ou 'required this.usuarioId' se for ID
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,  // Ou 'usuarioId': usuarioId
    };
  }
}