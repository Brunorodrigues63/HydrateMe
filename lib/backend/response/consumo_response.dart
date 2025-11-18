import 'package:json_annotation/json_annotation.dart';

part 'consumo_response.g.dart';

@JsonSerializable()
class ConsumoResponse {
  DateTime data;

  @JsonKey(name: "quantidadeConsumida")
  int quantidade;

  ConsumoResponse(this.data, this.quantidade);

  Map<String, dynamic> toJson() => _$ConsumoResponseToJson(this);

  factory ConsumoResponse.fromJson(Map<String, dynamic> json) =>
      _$ConsumoResponseFromJson(json);
}
