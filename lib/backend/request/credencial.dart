import 'package:json_annotation/json_annotation.dart';

part 'credencial.g.dart';

@JsonSerializable()
class Credencial {
  final String email;
  final String senha;

  Credencial(this.email, this.senha);

  Map<String, dynamic> toJson() => _$CredencialToJson(this);

  factory Credencial.fromJson(Map<String, dynamic> json) =>
      _$CredencialFromJson(json);
}
