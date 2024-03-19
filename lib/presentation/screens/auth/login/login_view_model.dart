part of 'login_imports.dart';

class LoginViewModel{
  final Repository repository;
  LoginViewModel({required this.repository});

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);


}