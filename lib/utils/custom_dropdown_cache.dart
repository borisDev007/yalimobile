import 'package:flutter/material.dart';

class CustomDropdownCache {
  String placeholder;
  String _selectedValue = "";
  String err;
  Icon icon;
  List<String> options;
  String defaultValue;

  CustomDropdownCache({
    this.placeholder = "",
    this.err = "Veuillez sélectionner une option",
    required this.icon,
    required this.options,
    this.defaultValue = "",
  }) {
    _selectedValue = defaultValue;
    options = options.toSet().toList(); // Convertir en ensemble puis en liste pour assurer l'unicité
  }

  DropdownButtonFormField<String> dropdownFormField({void Function(String?)? onChanged}) {
    return DropdownButtonFormField<String>(
      onChanged: onChanged,
      validator: (String? value) => value == null || value.isEmpty ? err : null,
      items: options
          .map((option) => DropdownMenuItem<String>(
        value: option,
        child: Text(option),
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
