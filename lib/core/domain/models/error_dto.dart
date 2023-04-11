import 'error_type.dart';

class ErrorDto {
  String message;
  String errorCode;
  ErrorType errorType;

  ErrorDto({
    required this.message,
    this.errorCode = '-',
    this.errorType = ErrorType.unknown,
  });

  @override
  String toString() {
    return 'ErrorDto{message: $message, errorCode: $errorCode, errorType: $errorType}';
  }
}
