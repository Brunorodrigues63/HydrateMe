// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map<String, dynamic> json) => Usuario(
  (json['usuarioId'] as num).toInt(),
  json['nome'] as String,
  json['email'] as String,
  json['senha'] as String,
  (json['altura'] as num).toDouble(),
  (json['peso'] as num).toDouble(),
  (json['idade'] as num).toInt(),
);

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
  'usuarioId': instance.id,
  'nome': instance.nome,
  'email': instance.email,
  'senha': instance.senha,
  'altura': instance.altura,
  'peso': instance.peso,
  'idade': instance.idade,
};
