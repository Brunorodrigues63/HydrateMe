// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calcular_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalcularRequest _$CalcularRequestFromJson(Map<String, dynamic> json) =>
    CalcularRequest(
      (json['peso'] as num).toDouble(),
      (json['altura'] as num).toDouble(),
      (json['idade'] as num).toInt(),
    );

Map<String, dynamic> _$CalcularRequestToJson(CalcularRequest instance) =>
    <String, dynamic>{
      'peso': instance.peso,
      'altura': instance.altura,
      'idade': instance.idade,
    };
