part of 'widgets_imports.dart';

class OnBoardThird extends StatelessWidget {
  const OnBoardThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          MyAssets.assetsImagesOnboard3,
          height: 333.h,
          width: 333.w,
        ),
        "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page."
            .text
            .size(15.sp)
            .align(TextAlign.center)
            .color(MyColors.blackColor)
            .fontWeight(FontWeight.w500)
            .make(),
      ],
    );
  }
}
