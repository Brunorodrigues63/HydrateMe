import 'package:get_it/get_it.dart';
import 'package:hydrate_me/services/auth_service.dart';
import 'package:hydrate_me/services/cadastro_service.dart';
import 'package:hydrate_me/services/calcular_service.dart';
import 'package:hydrate_me/services/login_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton(() => AuthService());
  getIt.registerLazySingleton(() => LoginService());
  getIt.registerLazySingleton(() => CadastroService());
  getIt.registerLazySingleton(() => CalcularService());
}
