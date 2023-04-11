import 'dart:convert';
import 'dart:io';

T? cast<T>(value) => value is T ? value : null;

extension FileExt on File {
  String toBase64Image() {
    var bytes = readAsBytesSync();
    return "data:image/png;base64,${base64Encode(bytes)}";
  }
}

extension StringNullExt on String? {
  bool isValidEmail() {
    if (this == null || (this ?? '').isEmpty) return false;

    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this!);
  }
}

extension StringExt on String {
  String? nullIfEmpty() {
    if (isEmpty) return null;

    return this;
  }
}
