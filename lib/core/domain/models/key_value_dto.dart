class KeyValueDto<T> {
  final String key;
  final T? value;

  const KeyValueDto({
    required this.key,
    this.value,
  });

  @override
  String toString() {
    return 'KeyValueDto{key: $key, value: $value}';
  }
}
