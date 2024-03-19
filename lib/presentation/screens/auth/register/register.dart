part of 'register_imports.dart';

@RoutePage()
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: FadedScaleAnimation(
            child: Column(
              children: [
                Image.asset(
                  MyAssets.assetsLogoBlue,
                  height: 42.h,
                  width: 139.w,
                  color: MyColors.whiteColor,
                ).centered(),
                100.h.heightBox,
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.r),
                      topRight: Radius.circular(35.r),
                    ),
                    color: MyColors.whiteColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Register"
                            .text
                            .size(18.sp)
                            .fontWeight(FontWeight.w700)
                            .color(MyColors.primaryColor)
                            .makeCentered(),
                        48.h.heightBox,
                        "Email"
                            .text
                            .color(MyColors.primaryColor)
                            .make(),
                        10.h.heightBox,
                        VxTextField(
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.r,
                          hint: "boris.developpeur@gmail.com",
                          prefixIcon: const Icon(Icons.email_outlined,color: MyColors.primaryColor,),
                        ),
                        20.h.heightBox,
                        "Password"
                            .text
                            .color(MyColors.primaryColor)
                            .make(),
                        10.h.heightBox,
                        VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.r,
                          prefixIcon: const Icon(Icons.lock_outline,color: MyColors.primaryColor,),
                        ),
                        20.h.heightBox,
                        "Confirm Password"
                            .text
                            .color(MyColors.primaryColor)
                            .make(),
                        10.h.heightBox,
                        VxTextField(
                          isPassword: true,
                          obscureText: true,
                          fillColor: Colors.transparent,
                          borderColor: MyColors.primaryColor,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10.r,
                          prefixIcon: const Icon(Icons.lock_outline,color: MyColors.primaryColor,),
                        ),
                        20.h.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 215.w,
                              child: CheckboxListTile(
                                contentPadding: EdgeInsets.zero,
                                value: false,
                                controlAffinity: ListTileControlAffinity.leading,
                                onChanged: (value){},
                                title: "Remember Me".text.make(),
                              ),
                            ),
                          ],
                        ),
                        20.h.heightBox,
                        PrimaryButton(
                          title: "Register",
                          onPressed: (){},
                        ),
                        20.h.heightBox,
                        "Already Have on account ?"
                            .richText
                            .size(14.sp).semiBold
                            .withTextSpanChildren([
                          TextSpan(
                              text: " Login",
                              recognizer: TapGestureRecognizer()..onTap=()=> AutoRouter.of(context).push(const LoginRoute()),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: MyColors.primaryColor,
                              ),
                          ),
                        ]).makeCentered(),
                      ],
                    ),
                  ),
            
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
