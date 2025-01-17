abstract class AuthState {}

class InitState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginErrorState extends AuthState {
  String error;
  LoginErrorState(this.error);
}

class LoginSuccessState extends AuthState {}

class SignUpLoadingState extends AuthState {}

class SignUpErrorState extends AuthState {
  String error;
  SignUpErrorState(this.error);
}

class SignUpSuccessState extends AuthState {}
