import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hydrate_me/backend/model/usuario.dart';
import 'package:hydrate_me/backend/request/alterar_senha_request.dart';
import 'package:hydrate_me/backend/request/calcular_request.dart';
import 'package:hydrate_me/backend/request/gerar_chave_request.dart';
import 'package:hydrate_me/backend/request/resetar_senha_request.dart';
import 'package:hydrate_me/backend/response/calcular_response.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'hydrate_me_api.g.dart';

@RestApi(baseUrl: "https://hydrateme-api.tccnapratica.com.br")
abstract class HydrateMeApi {
  factory HydrateMeApi(Dio dio, {String? baseUrl}) = _HydrateMeApi;

  @POST("/Usuario/login")
  Future<String> criarUsuario(@Body() Usuario usuario);

  @GET("/consumo/listar")
  Future<List<Usuario>> listar();

  @DELETE("/Usuario/excluir/{id}")
  Future<String> excluirUsuario(@Path("id") String id);

  @POST("/Usuario/Calcular")
  Future<CalcularResponse> calcular(@Body() CalcularRequest request);

  @PUT("alterar-senha")
  Future<String> alterarSenha(@Body() AlterarSenhaRequest request);

  @POST("gerar-chave-reset-senha")
  Future<String> gerarChaveResetSenha(@Body() GerarChaveResetRequest request);
  
  @PUT("resetar-senha")
  Future<String> resetarSenha(@Body() ResetarSenhaRequest request);
}

HydrateMeApi? _api;

HydrateMeApi hydrateMe() {
  if (_api == null) {
    final dio = Dio();

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args) {
          // don't print requests with uris containing '/posts'
          if (options.path.contains('/posts')) {
            return false;
          }
          // don't print responses with unit8 list data
          return !args.isResponse || !args.hasUint8ListData;
        },
      ),
    );

    _api = HydrateMeApi(dio, baseUrl: "http://localhost:5111");
  }

  return _api!;
}
