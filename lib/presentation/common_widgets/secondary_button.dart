
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../core/constants/my_colors.dart';

// ignore: must_be_immutable
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({super.key, required this.title, this.onPressed, this.isLoading});
  final String title;
  // ignore: prefer_typing_uninitialized_variables
  final  onPressed;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading == true ? 
      const CircularProgressIndicator(color: MyColors.secondaryColor,).centered() :
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.redColor,
            foregroundColor: Colors.white),
        onPressed: onPressed,
        child: Center(
          child: Text(title),
        ),
      );
  }
}