import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/constants/my_colors.dart';

class NumberTextField {
  String placeholder;
  String _value = "";
  String err;
  bool isPassword;
  Icon icon;
  String? initialValue; // Ajout de la valeur initiale

  NumberTextField({
    this.placeholder = "",
    this.err = "Veuillez remplir ce champ",
    required this.icon,
    this.isPassword = false,
    this.initialValue, // Ajout de la valeur initiale dans le constructeur
  }) {
    _value = initialValue ?? ""; // Utilisation de la valeur initiale fournie, ou une chaîne vide par défaut
  }

  VxTextField textFormField() {
    return VxTextField(
      value: _value, // Utilisation de la valeur actuelle
      onChanged: (e) {
        _value = e;
      },
      keyboardType: TextInputType.number,
      validator: (e) => e!.isEmpty ? err : null,
      isPassword: isPassword,
      fillColor: Colors.transparent,
      borderColor: MyColors.blackColor,
      borderType: VxTextFieldBorderType.roundLine,
      borderRadius: 10.r,
      hint: placeholder,
      prefixIcon: icon,
    );
  }

  String get value {
    return _value;
  }
}
