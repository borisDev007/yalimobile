part of 'common_widgets_imports.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  PrimaryButton({super.key, required this.title, this.color = MyColors.secondaryColor, this.onPressed, this.isLoading});
  final String title;
  final  onPressed;
  Color color = MyColors.redColor;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading==true? const CircularProgressIndicator(color: MyColors.primaryColor,).centered():ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.r)
        ),
      ),
      child:title
          .text.size(16.sp)
          .color(MyColors.whiteColor)
          .fontWeight(FontWeight.w700)
          .make(),
    );
  }
}