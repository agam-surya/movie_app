import 'package:either_dart/either.dart';

import '../domain/models/error_dto.dart';
import '../domain/models/key_value_dto.dart';

typedef EitherError<T> = Either<ErrorDto, T>;

typedef FutureOrError<T> = Future<EitherError<T>>;

typedef IntCallback = void Function(int);

typedef StringCallback = void Function(String);

typedef BooleanCallback = void Function(bool);

typedef KeyValueStringCallback = void Function(KeyValueDto<String>);
