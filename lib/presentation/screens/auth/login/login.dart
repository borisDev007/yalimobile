part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}
late LoginViewModel loginViewModel;
final _key = GlobalKey<FormState>();
CustomTextField emailConnect = CustomTextField(
  placeholder: "Email ou numéro de téléphone",
  icon: const Icon(Icons.email_outlined,color: MyColors.primaryColor,),
  err: "Entrez votre email ou numéro de téléphone",
  initialValue: "",
);

CustomTextField passwordConnect = CustomTextField(
  placeholder: "Mot de passe",
  icon: const Icon(Icons.lock_outline_rounded,color: MyColors.primaryColor,),
  err: "Entrez au moins 6 caractères",
  isPassword: true,
  initialValue: "",
);

final List<String> images = [
  'https://example.com/image1.jpg',
  'https://example.com/image2.jpg',
  'https://example.com/image3.jpg',
  // Add more image URLs as needed
];



class _LoginState extends State<Login> {

  @override
  void initState() {
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill
                    )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeInUp(duration: const Duration(seconds: 1), child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/light-1.png')
                            )
                        ),
                      )),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeInUp(duration: const Duration(milliseconds: 1200), child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/light-2.png')
                            )
                        ),
                      )),
                    ),
                    Positioned(
                      right: 40,
                      top: 40,
                      width: 80,
                      height: 150,
                      child: FadeInUp(duration: const Duration(milliseconds: 1300), child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/clock.png')
                            )
                        ),
                      )),
                    ),
                    Positioned(
                      child: FadeInUp(duration: const Duration(milliseconds: 1600), child: Container(
                        margin: EdgeInsets.only(top: 60.h),
                        child: "Se connecter"
                            .text
                            .size(35.sp)
                            .fontWeight(FontWeight.w700)
                            .color(MyColors.whiteColor)
                            .makeCentered(),
                      )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Form(
                  key: _key,
                  child: Column(
                    children: <Widget>[
                      FadeInUp(duration: const Duration(milliseconds: 1800),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Email ou numéro de téléphone"
                                    .text
                                    .color(MyColors.blackColor)
                                    .make(),
                                10.h.heightBox,
                                emailConnect.textFormField(),
                              ],
                            ),

                          )),
                      10.h.heightBox,
                      FadeInUp(duration: const Duration(milliseconds: 1900),
                          child: Container(
                            padding:  EdgeInsets.all(5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Mot de passe"
                                    .text
                                    .color(MyColors.blackColor)
                                    .make(),
                                10.h.heightBox,
                                passwordConnect.textFormField(),
                              ],
                            ),

                          )),
                      10.h.heightBox,
                      FadeInUp(duration: const Duration(milliseconds: 1950),
                          child: Container(
                            padding: EdgeInsets.all(5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  child: "Mot de passe oublié ?".text.size(14).make(),
                                  onTap:(){},
                                ),
                              ],
                            ),

                          )),
                      10.h.heightBox,
                      FadeInUp(duration: const Duration(milliseconds: 2000),
                          child: Container(
                            padding: EdgeInsets.all(5.w),
                            child: BlocBuilder<VelocityBloc<bool>, VelocityState<bool>>(
                              bloc: loginViewModel.isLoadingBloc,
                              builder: (context, state){
                                return PrimaryButton(
                                  title: "Se connecter",
                                  isLoading : state.data,
                                  onPressed: () async {
                                    bool isConnected = await isInternetConnected();
                                    if(_key.currentState!.validate()){
                                      if(isConnected){
                                        AutoRouter.of(context).push(const HomeRoute());
                                      }else{
                                        //loginViewModel.localConnect(emailConnect.value, passwordConnect.value, context);
                                        showTopToast(context, "Aucune connexion internet");
                                      }
                                    }
                                  },
                                );
                              },
                            ),

                          )),
                      10.h.heightBox,
                      FadeInUp(duration: const Duration(milliseconds: 2100),
                          child: Container(
                            padding: EdgeInsets.all(5.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "Vous n'avez pas de compte ?"
                                    .richText
                                    .size(14.sp).semiBold
                                    .withTextSpanChildren([
                                  TextSpan(
                                    text: "Inscrivez-vous",
                                    recognizer: TapGestureRecognizer()..onTap=() {

                                    },
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: MyColors.primaryColor,
                                    ),
                                  ),
                                ]).makeCentered(),

                              ],
                            ),

                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
