import 'package:json_annotation/json_annotation.dart';

part 'calcular_response.g.dart';

@JsonSerializable()
class CalcularResponse {
  final double peso;
  final double altura;
  final int idade;

  @JsonKey(name: "aguaRecomendadaMl")
  final double aguaML;

  @JsonKey(name: "aguaRecomendadaLitros")
  final double aguaL;

  CalcularResponse(this.peso, this.idade, this.altura, this.aguaL, this.aguaML);

  Map<String, dynamic> toJson() => _$CalcularResponseToJson(this);

  factory CalcularResponse.fromJson(Map<String, dynamic> json) =>
      _$CalcularResponseFromJson(json);
}
