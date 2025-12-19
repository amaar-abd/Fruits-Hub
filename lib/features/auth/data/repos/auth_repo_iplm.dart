import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_exceptions.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/entites/user_entity.dart';
import 'dart:developer';

class AuthRepoIplm extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  AuthRepoIplm({required this.firebaseAuthService});

  @override
  Future<Either<Failures, UserEntity>> createUserEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomeExceptions catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('exception  in AuthRepoIplm.createUserEmailAndPassword ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
  }
  
  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(String email, String password)async {
    try {
      var user = await firebaseAuthService.singInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
      
    } on CustomeExceptions catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('exception  in AuthRepoIplm.signInWithEmailAndPassword ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
   
   
  }
}
