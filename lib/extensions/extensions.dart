extension CurrencyStringExtensions on String {
  String toUnFormattedString() => replaceAll(RegExp(r'[^\d.]'), '');

  double toUnFormattedDouble() =>
      double.tryParse(replaceAll(RegExp(r'[^\d.]'), '')) ?? 0.0;

  int toUnFormattedInt() =>
      int.tryParse(replaceAll(RegExp(r'[^\d.]'), '')) ?? 0;
}
