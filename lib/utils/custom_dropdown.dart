import 'package:flutter/material.dart';

class CustomDropdown {
  String placeholder;
  String _selectedValue = "";
  String err;
  Icon icon;
  List<String> options;
  String defaultValue;

  CustomDropdown({
    this.placeholder = "",
    this.err = "Veuillez sélectionner une option",
    required this.icon,
    required this.options,
    this.defaultValue = "",
  }) {
    _selectedValue = defaultValue;
  }

  DropdownButtonFormField<String> dropdownFormField() {
    return DropdownButtonFormField<String>(
      onChanged: (String? value) {
        if (value != null) {
          _selectedValue = value;
        }
      },
      validator: (String? value) =>
      value == null || value.isEmpty ? err : null,
      items: options
          .map((option) => DropdownMenuItem<String>(
        child: Text(option),
        value: option,
      ))
          .toList(),
      hint: Text(placeholder),
      icon: icon,
      value: _selectedValue.isEmpty ? null : _selectedValue,
    );
  }

  String get value {
    return _selectedValue;
  }
}
