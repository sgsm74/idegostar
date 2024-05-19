import 'package:dartz/dartz.dart';
import 'package:idegostar/core/errors/errors.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
