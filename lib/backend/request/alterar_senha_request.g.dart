// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alterar_senha_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlterarSenhaRequest _$AlterarSenhaRequestFromJson(Map<String, dynamic> json) =>
    AlterarSenhaRequest(
      (json['senha'] as num).toDouble(),
      (json['novasenha'] as num).toDouble(),
      (json['confirmarnovasenha'] as num).toInt(),
    );

Map<String, dynamic> _$AlterarSenhaRequestToJson(
        AlterarSenhaRequest instance) =>
    <String, dynamic>{
      'senha': instance.senha,
      'novasenha': instance.novasenha,
      'confirmarnovasenha': instance.confirmarnovasenha,
    };
