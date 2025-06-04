## [0.0.4] - 2025-06-04

### Updated
- Upgraded all dependencies to their latest stable versions to ensure compatibility with the latest Flutter SDK.

### Added
- Added support for additional `TextFormField` parameters in `RupeeTextField`, including:
  - `focusNode`
  - `autofocus`
  - `readOnly`
  - `textInputAction`
  - `onFieldSubmitted`
  - `onEditingComplete`
  - `style`
  - `textAlign`
  - `maxLines`, `minLines`, `maxLength`, and `buildCounter`
  - `keyboardAppearance`
  - `enableSuggestions`, `enableInteractiveSelection`
  - `scrollPadding`, `textDirection`, `expands`, `scrollPhysics`
  - `restorationId`, `smartDashesType`, `smartQuotesType`
  - `strutStyle`, `textCapitalization`
  - `mouseCursor`, `contextMenuBuilder`

### Notes
- `CurrencyInputFormatter` continues to format the input with the `₹` symbol.
- All new parameters are optional and preserve backward compatibility.

## 0.0.3

## Added
- Updated `README.md` to include examples of how to use the `RupeeTextField` widget, formatting extensions, and customization options.

## 0.0.2

## Renamed
- Renamed `CurrencyInputFormatter.dart` to `currency_input_formatter.dart` for better clarity and consistency.

## 0.0.1

### Initial Release

- **Added**: Initial release of the Flutter package for currency input formatting.
- **Currency Input Formatter**: 
  - Integrates with `TextFormField` for easy currency input.
  - Allows setting and displaying a custom currency symbol (e.g., ₹, $, €, £).
- **String Extensions**:
  - **`toUnFormattedInt`**: Converts a formatted currency string into an integer.
  - **`toUnFormattedString`**: Retrieves the unformatted version of the currency string for further use.

### Features

- Seamlessly integrates with `TextFormField`.
- Customizable currency symbol.
- Provides string extensions for handling formatted currency strings.

