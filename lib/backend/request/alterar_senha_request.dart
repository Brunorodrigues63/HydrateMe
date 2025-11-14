import 'package:json_annotation/json_annotation.dart';

part 'alterar_senha_request.g.dart';

@JsonSerializable()
class AlterarSenhaRequest {
  final double senha;
  final double novasenha;
  final int confirmarnovasenha;

  AlterarSenhaRequest(this.senha, this.novasenha, this.confirmarnovasenha);

  Map<String, dynamic> toJson() => _$AlterarSenhaRequestToJson(this);

  factory AlterarSenhaRequest.fromJson(Map<String, dynamic> json) =>
      _$AlterarSenhaRequestFromJson(json);
}