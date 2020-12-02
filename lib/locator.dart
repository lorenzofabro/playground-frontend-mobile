import 'package:get_it/get_it.dart';
import 'package:playground/core/services/api.dart';
import 'package:playground/core/services/authentication_service.dart';
import 'package:playground/core/viewmodels/login_model.dart';
import 'package:playground/core/viewmodels/users_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => LoginModel());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => Api());
  locator.registerFactory(() => UsersModel());
}
