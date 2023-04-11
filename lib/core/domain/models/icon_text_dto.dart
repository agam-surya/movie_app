import 'package:flutter/material.dart';

class IconTextDto {
  final String key;
  final Widget icon;
  final String label;

  const IconTextDto({
    this.key = '',
    this.icon = const Icon(Icons.add),
    this.label = '',
  });

  @override
  String toString() {
    return 'IconTextDto{key: $key, icon: $icon, label: $label}';
  }
}
