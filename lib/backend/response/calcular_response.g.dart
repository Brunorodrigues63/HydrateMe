// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calcular_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalcularResponse _$CalcularResponseFromJson(Map<String, dynamic> json) =>
    CalcularResponse(
      (json['peso'] as num).toDouble(),
      (json['idade'] as num).toInt(),
      (json['altura'] as num).toDouble(),
      (json['aguaRecomendadaLitros'] as num).toDouble(),
      (json['aguaRecomendadaMl'] as num).toDouble(),
    );

Map<String, dynamic> _$CalcularResponseToJson(CalcularResponse instance) =>
    <String, dynamic>{
      'peso': instance.peso,
      'altura': instance.altura,
      'idade': instance.idade,
      'aguaRecomendadaMl': instance.aguaML,
      'aguaRecomendadaLitros': instance.aguaL,
    };
