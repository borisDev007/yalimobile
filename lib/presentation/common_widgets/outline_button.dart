part of 'common_widgets_imports.dart';
class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key, required this.title, this.onPressed});

  final String title;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: MyColors.whiteColor),
            borderRadius: BorderRadius.circular(11.r)
        ),
      ),
      child: title
          .text.size(16.sp)
          .color(MyColors.whiteColor)
          .fontWeight(FontWeight.w700)
          .make(),
    );
  }
}