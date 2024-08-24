import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  final String currencySymbol;
  final NumberFormat _numberFormat;

  CurrencyInputFormatter({required this.currencySymbol})
      : _numberFormat = NumberFormat('#,##,###.##');

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final numericOnly = newValue.text.replaceAll(RegExp(r'[^\d.]'), '');

    final newValueFormatted = numericOnly.isNotEmpty
        ? _numberFormat.format(double.tryParse(numericOnly) ?? 0)
        : '';

    final resultText =
        newValueFormatted.isEmpty ? '' : '$currencySymbol$newValueFormatted';

    return TextEditingValue(
      text: resultText,
      selection: TextSelection.collapsed(offset: resultText.length),
    );
  }
}
