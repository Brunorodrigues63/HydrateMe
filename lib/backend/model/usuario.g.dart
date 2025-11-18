// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map<String, dynamic> json) => Usuario(
      id: json['id'] as String? ?? "",
      nome: json['nome'] as String,
      email: json['email'] as String,
      senha: json['senha'] as String,
      confirmarSenha: json['confirmarSenha'] as String? ?? "",
      altura: (json['altura'] as num?)?.toDouble() ?? 0,
      peso: (json['peso'] as num?)?.toDouble() ?? 0,
      idade: (json['idade'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'email': instance.email,
      'senha': instance.senha,
      'confirmarSenha': instance.confirmarSenha,
      'altura': instance.altura,
      'peso': instance.peso,
      'idade': instance.idade,
    };
