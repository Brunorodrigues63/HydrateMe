import 'package:json_annotation/json_annotation.dart';

part 'usuario.g.dart';

@JsonSerializable()
class Usuario {
  @JsonKey(name: "usuarioId")
  final int id;

  final String nome;
  final String email;
  final String senha;
  final double altura;
  final double peso;
  final int idade;

  Usuario(
    this.id,
    this.nome,
    this.email,
    this.senha,
    this.altura,
    this.peso,
    this.idade,
  );

  Map<String, dynamic> toJson() => _$UsuarioToJson(this);

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}
