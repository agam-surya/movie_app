class PairDto<T1, T2> {
  final T1? first;
  final T2? second;

  const PairDto({
    this.first,
    this.second,
  });

  @override
  String toString() {
    return 'PairDto{first: $first, second: $second}';
  }
}
