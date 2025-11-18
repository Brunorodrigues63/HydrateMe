import 'package:json_annotation/json_annotation.dart';

part 'usuario.g.dart';

@JsonSerializable()
class Usuario {
  final String id;
  final String nome;
  final String email;
  final String senha;
  final String confirmarSenha;
  final double altura;
  final double peso;
  final int idade;

  Usuario({
    this.id = "",
    required this.nome,
    required this.email,
    required this.senha,
    this.confirmarSenha = "",
    this.altura = 0,
    this.peso = 0,
    this.idade = 0,
  });

  Map<String, dynamic> toJson() => _$UsuarioToJson(this);

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}
