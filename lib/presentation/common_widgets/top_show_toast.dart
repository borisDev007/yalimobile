part of 'common_widgets_imports.dart';

void showTopToast(BuildContext context, String message) {
  VxToast.show(
    context,
    msg: message,
    bgColor: Colors.red,
    textColor: Colors.white,
    position: VxToastPosition.top,
    pdHorizontal: 16,
    pdVertical: 8,
  );
}

void showTopToastSuccess(BuildContext context, String message) {
  VxToast.show(
    context,
    msg: message,
    bgColor: Colors.green,
    textColor: Colors.white,
    position: VxToastPosition.top,
    pdHorizontal: 16,
    pdVertical: 8,
  );
}