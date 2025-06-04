library;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rupee_textfield/formatter/currency_input_formatter.dart';

class RupeeTextField extends StatelessWidget {
  const RupeeTextField({
    super.key,
    required this.controller,
    required this.onChanged,
    this.onTap,

    this.decoration,
    this.validator,
    this.focusNode,
    this.enabled,
    this.autofocus = false,
    this.readOnly = false,
    this.obscureText = false,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.style,
    this.textAlign = TextAlign.start,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.buildCounter,
    this.onSaved,
    this.keyboardAppearance,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.inputFormatters,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.textDirection,
    this.expands = false,
    this.autovalidateMode,
    this.scrollPhysics,
    this.restorationId,
    this.smartDashesType,
    this.smartQuotesType,
    this.strutStyle,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType = TextInputType.number,
    this.mouseCursor,
    this.contextMenuBuilder,
  });

  final TextEditingController? controller;
  final String currencySymbol = "₹";
  final InputDecoration? decoration;
  final Function()? onTap;
  final Function(String) onChanged;
  final String? Function(String?)? validator;

  final FocusNode? focusNode;
  final bool? enabled;
  final bool autofocus;
  final bool readOnly;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onEditingComplete;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final Widget? Function(
    BuildContext, {
    required int currentLength,
    required bool isFocused,
    required int? maxLength,
  })?
  buildCounter;
  final void Function(String?)? onSaved;
  final Brightness? keyboardAppearance;
  final bool enableSuggestions;
  final bool enableInteractiveSelection;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets scrollPadding;
  final TextDirection? textDirection;
  final bool expands;
  final AutovalidateMode? autovalidateMode;
  final ScrollPhysics? scrollPhysics;
  final String? restorationId;
  final SmartDashesType? smartDashesType;
  final SmartQuotesType? smartQuotesType;
  final StrutStyle? strutStyle;
  final TextCapitalization textCapitalization;
  final TextInputType keyboardType;
  final MouseCursor? mouseCursor;
  final Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        key: key,
        controller: controller,
        focusNode: focusNode,
        enabled: enabled,
        autofocus: autofocus,
        readOnly: readOnly,
        obscureText: obscureText,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        style: style,
        textAlign: textAlign,
        maxLines: maxLines,
        minLines: minLines,
        maxLength: maxLength,
        buildCounter: buildCounter,
        onSaved: onSaved,
        keyboardAppearance: keyboardAppearance,
        enableSuggestions: enableSuggestions,
        enableInteractiveSelection: enableInteractiveSelection,
        inputFormatters: [
          CurrencyInputFormatter(currencySymbol: currencySymbol),
          ...?inputFormatters,
        ],
        scrollPadding: scrollPadding,
        textDirection: textDirection,
        expands: expands,
        autovalidateMode: autovalidateMode,
        scrollPhysics: scrollPhysics,
        restorationId: restorationId,
        smartDashesType: smartDashesType,
        smartQuotesType: smartQuotesType,
        strutStyle: strutStyle,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        mouseCursor: mouseCursor,
        contextMenuBuilder: contextMenuBuilder,
        onTap: onTap,
        onChanged: onChanged,
        validator: validator,
        decoration: decoration,
      ),
    );
  }
}
