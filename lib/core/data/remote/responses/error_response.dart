import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

///
/// {
///   "status": <bool>,
///   "message": <string>
/// }
///
@JsonSerializable()
class ErrorResponse {
  @JsonKey(name: 'status')
  bool? status;
  @JsonKey(name: 'message')
  String? message;

  ErrorResponse({
    this.status,
    this.message,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
