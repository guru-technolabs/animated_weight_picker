part of '../animated_weight_picker.dart';

final RegExp _regex = RegExp(r"([.]*0+)(?!.*\d)");

extension Ex on double {
  double toPrecision(int n) => double.parse(toStringAsFixed(n));
  String trimTrallingZero() => toString().replaceAll(_regex, '');
}
