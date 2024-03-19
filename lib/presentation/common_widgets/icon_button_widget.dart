part of 'common_widgets_imports.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.icon, this.onPressed, this.isLoading});
  final Icon icon;
  final  onPressed;
  final Color color = MyColors.redColor;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading==true? const CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation<Color>(MyColors.primaryColor),)
        :IconButton(
          onPressed: onPressed,
          icon:icon,
        );
  }
}