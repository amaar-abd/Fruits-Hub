import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_exceptions.dart';
import 'package:fruits_hub/core/errors/failures.dart';
import 'package:fruits_hub/core/services/database_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/utils/backend_endpoints.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/entites/user_entity.dart';
import 'dart:developer';

class AuthRepoIplm extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;
  AuthRepoIplm({
    required this.databaseService,
    required this.firebaseAuthService,
  });

  @override
  Future<Either<Failures, UserEntity>> createUserEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var userEntity = UserEntity(name: name, email: email, uId: user.uid);
      await addUserToDatabase(user: userEntity);
      return right(userEntity);
    } on CustomeExceptions catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(ServerFailure(e.message));
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log(
        'exception  in AuthRepoIplm.createUserEmailAndPassword ${e.toString()}',
      );
      return left(ServerFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.singInWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userentity = await getUserData(uId: user.uid);
      return right(userentity);
    } on CustomeExceptions catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        'exception  in AuthRepoIplm.signInWithEmailAndPassword ${e.toString()}',
      );
      return left(ServerFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      var ischecked = await databaseService.checkDocumentExists(
        path: BackendEndpoints.addUserData,
        documentId: user.uid,
      );
      if (ischecked) {
        await getUserData(uId: user.uid);
      } else {
        await addUserToDatabase(user: userEntity);
      }
      return right(userEntity);
    } catch (e) {
      log('exception  in AuthRepoIplm.signInWithGoogle ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
  }

  @override
  Future<Either<Failures, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user));
    } catch (e) {
      log('exception  in AuthRepoIplm.signInWithFacebook ${e.toString()}');
      return left(ServerFailure('حدث خطأ ما، يرجى المحاولة مرة أخرى'));
    }
  }

  @override
  Future addUserToDatabase({required UserEntity user}) async {
    await databaseService.addData(
      path: BackendEndpoints.addUserData,
      data: user.toMap(),
      documentId: user.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var user = await databaseService.getdata(
      path: BackendEndpoints.addUserData,
      documentId: uId,
    );
    return UserModel.fromMap(user);
  }
}
