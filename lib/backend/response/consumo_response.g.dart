// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConsumoResponse _$ConsumoResponseFromJson(Map<String, dynamic> json) =>
    ConsumoResponse(
      DateTime.parse(json['data'] as String),
      (json['quantidadeConsumida'] as num).toInt(),
    );

Map<String, dynamic> _$ConsumoResponseToJson(ConsumoResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toIso8601String(),
      'quantidadeConsumida': instance.quantidade,
    };
