part of 'signup_cubit.dart';
// the states for signup cubit
@immutable

class SignupCubitState {}

final class SignupCubitInitial extends SignupCubitState {}
final class SignupCubitLoading extends SignupCubitState {}

final class SignupCubitSuccess extends SignupCubitState {
  final UserEntity userEntity;
  SignupCubitSuccess({required this.userEntity});
}
final class SignupCubitFailure extends SignupCubitState {
  final String errormessage;
  SignupCubitFailure({required this.errormessage}); 
}
