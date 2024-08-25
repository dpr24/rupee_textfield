library rupee_textfield;

import 'package:flutter/material.dart';
import 'package:rupee_textfield/formatter/currency_input_formatter.dart';

class RupeeTextField extends StatelessWidget {
  const RupeeTextField(
      {super.key,
      required this.controller,
      this.onTap,
      this.symbol,
      required this.onChanged,
      this.validator,
      this.decoration});

  final TextEditingController? controller;

  final String? symbol;
  final String currencySymbol = "₹";

  final InputDecoration? decoration;
  final Function()? onTap;
  final Function(String) onChanged;
  final Function(String value)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          onTap: onTap,
          inputFormatters: [
            CurrencyInputFormatter(currencySymbol: currencySymbol)
          ],
          validator: (value) {
            return validator != null ? validator!(value!) : null;
          },
          onChanged: (value) {
            onChanged(value);
          },
          decoration: decoration),
    );
  }
}
