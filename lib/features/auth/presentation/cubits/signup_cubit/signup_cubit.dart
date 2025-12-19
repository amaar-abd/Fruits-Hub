
import 'package:bloc/bloc.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/entites/user_entity.dart';
import 'package:meta/meta.dart';
part 'signup_cubit_state.dart';

class SignupCubit extends Cubit<SignupCubitState> {
  SignupCubit(this.authRepo) : super(SignupCubitInitial());

  final AuthRepo authRepo;
  Future<void> signupUser({required String email,required String password,required String name}) async {
    emit(SignupCubitLoading());
    final result = await authRepo.createUserEmailAndPassword(email, password, name);

    result.fold(
    (failure) => emit(SignupCubitFailure(errormessage: failure.message)),
     (userEntity) => emit(SignupCubitSuccess(userEntity: userEntity))
    );
  }
}
