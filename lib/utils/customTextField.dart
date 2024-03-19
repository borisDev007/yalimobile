import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/constants/my_colors.dart';

class CustomTextField {
  String placeholder;
  String _value = "";
  String err;
  bool isPassword;
  Icon icon;
  bool? require;
  String? initialValue; // Ajout de la valeur initiale

  CustomTextField({
    this.placeholder = "",
    this.err = "Veuillez remplir ce champ",
    required this.icon,
    this.isPassword = false,
    this.require = true,
    this.initialValue, // Ajout de la valeur initiale dans le constructeur
  }) {
    _value = initialValue ??
        ""; // Utilisation de la valeur initiale fournie, ou une chaîne vide par défaut
  }

  VxTextField textFormField() {
    if(require == true) {
      return VxTextField(
        value: _value, // Utilisation de la valeur actuelle
        onChanged: (e) {
          _value = e;
        },
        validator: (e) => e!.isEmpty ? err : null,
        isPassword: isPassword,
        fillColor: Colors.transparent,
        borderColor: MyColors.blackColor,
        borderType: VxTextFieldBorderType.roundLine,
        borderRadius: 10.r,
        hint: placeholder,
        prefixIcon: icon,
      );
    } else {
      return VxTextField(
        value: _value, // Utilisation de la valeur actuelle
        onChanged: (e) {
          _value = e;
        },
        isPassword: isPassword,
        fillColor: Colors.transparent,
        borderColor: MyColors.blackColor,
        borderType: VxTextFieldBorderType.roundLine,
        borderRadius: 10.r,
        hint: placeholder,
        prefixIcon: icon,
      );
    }
  }

  Widget get textAreaFormField {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: MyColors.blackColor),
      ),
      child: TextField(
        controller: TextEditingController(text: _value),
        onChanged: (e) {
          _value = e;
        },
        maxLines: null, // Permet un nombre illimité de lignes
        decoration: InputDecoration(
          hintText: placeholder,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10),
          prefixIcon: icon,
        ),
      ),
    );
  }

  String get value {
    return _value;
  }
}
