import 'package:flutter_test/flutter_test.dart';
import 'package:rupee_textfield/formatter/CurrencyInputFormatter.dart';

void main() {
  test('CurrencyInputFormatter formats input correctly', () {
    final formatter = CurrencyInputFormatter(currencySymbol: '₹');

    const input = TextEditingValue(text: '123456');
    final result = formatter.formatEditUpdate(input, input);

    expect(result.text, '₹1,23,456');
  });
}
