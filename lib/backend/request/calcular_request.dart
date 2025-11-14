import 'package:json_annotation/json_annotation.dart';

part 'calcular_request.g.dart';

@JsonSerializable()
class CalcularRequest {
  final double peso;
  final double altura;
  final int idade;

  CalcularRequest(this.peso, this.altura, this.idade);

  Map<String, dynamic> toJson() => _$CalcularRequestToJson(this);

  factory CalcularRequest.fromJson(Map<String, dynamic> json) =>
      _$CalcularRequestFromJson(json);
}
