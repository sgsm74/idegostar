import 'package:get_it/get_it.dart';
import 'package:idegostar/features/authentication/data/datasources/remote_datasource/authentication_remote_datasource.dart';
import 'package:idegostar/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:idegostar/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:idegostar/features/authentication/domain/usecases/login_usecase.dart';
import 'package:idegostar/features/authentication/domain/usecases/signup_usecase.dart';
import 'package:idegostar/features/authentication/presentation/bloc/authentication_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //bloc
  sl.registerFactory(
    () => AuthenticationBloc(
      loginUseCase: sl(),
      signUpUseCase: sl(),
    ),
  );
  //usecases
  sl.registerLazySingleton(() => LoginUseCase(repository: sl()));
  sl.registerLazySingleton(() => SignUpUseCase(repository: sl()));

  //repository
  sl.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(),
  );
  //datasources
  sl.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => AuthenticationRemoteDataSourceImpl(),
  );
}