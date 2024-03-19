import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/my_colors.dart';

class CustomDateField {
  TextEditingController _controller = TextEditingController();
  String err;
  Icon icon;
  int maxCharacters;
  DatePickerEntryMode initialEntryMode;
  DatePickerMode initialDatePickerMode;

  CustomDateField({
    this.err = "Veuillez sélectionner une date",
    required this.icon,
    DateTime? initialValue, // Valeur initiale
    this.maxCharacters = 10,
    this.initialEntryMode = DatePickerEntryMode.calendar,
    this.initialDatePickerMode = DatePickerMode.day,
  }) {
    _controller.text = initialValue != null
        ? "${initialValue.day}/${initialValue.month}/${initialValue.year}"
        : "";
    _controller.addListener(_handleTextChange);
  }

  void _handleTextChange() {
    if (_controller.text.length > maxCharacters) {
      _controller.text = _controller.text.substring(0, maxCharacters);
      _controller.selection = TextSelection.fromPosition(
        TextPosition(offset: _controller.text.length),
      );
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime currentDate = DateTime.now();
    final DateTime initialDate = DateTime.now();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate.isAfter(currentDate) ? currentDate : initialDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2710),
      initialEntryMode: initialEntryMode,
      initialDatePickerMode: initialDatePickerMode,
      // Ajoutez d'autres propriétés de DatePicker selon vos besoins
    );

    if (picked != null && picked != selectedDate) {
      _controller.text = "${picked.day}/${picked.month}/${picked.year}";
    }
  }

  Widget dateField(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: AbsorbPointer(
        child: TextField(
          controller: _controller,
          keyboardType: TextInputType.datetime,
          inputFormatters: [
            DateInputFormatter(),
          ],
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: MyColors.primaryColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            hintText: "JJ/MM/AAAA",
            prefixIcon: const Icon(Icons.calendar_today),
          ),
        ),
      ),
    );
  }

  DateTime? get selectedDate {
    final parts = _controller.text.split('/');
    if (parts.length == 3) {
      final day = int.tryParse(parts[0]);
      final month = int.tryParse(parts[1]);
      final year = int.tryParse(parts[2]);

      if (day != null && month != null && year != null) {
        return DateTime(year, month, day);
      }
    }
    return null;
  }
}

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty &&
        newValue.text.length > oldValue.text.length) {
      if (newValue.text.length == 3) {
        if (!newValue.text.endsWith('/')) {
          return newValue.copyWith(
            text: '${newValue.text.substring(0, 2)}/${newValue.text.substring(2)}',
            selection: TextSelection.collapsed(offset: newValue.text.length),
          );
        }
      } else if (newValue.text.length == 6) {
        if (!newValue.text.endsWith('/')) {
          return newValue.copyWith(
            text: '${newValue.text.substring(0, 5)}/${newValue.text.substring(5)}',
            selection: TextSelection.collapsed(offset: newValue.text.length),
          );
        }
      } else if (newValue.text.length > 10) {
        return TextEditingValue(
          text: newValue.text.substring(0, 10),
          selection: const TextSelection.collapsed(offset: 10),
        );
      }
    }
    return newValue;
  }
}
