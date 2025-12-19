import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_exceptions.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required email,
    required password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}',
      );
      if (e.code == 'weak-password') {
        throw CustomeExceptions(message: 'كلمة المرور ضعيفة جدا');
      } else if (e.code == 'email-already-in-use') {
        throw CustomeExceptions(message: 'الايميل مستخدم مسبقا');
      } else if (e.code == 'network-request-failed') {
        throw CustomeExceptions(
          message: 'تاكد من اتصالك بالإنترنت، يرجى المحاولة مرة أخرى',
        );
      } else {
        throw CustomeExceptions(message: 'حدث خطأ ما، يرجى المحاولة مرة أخرى');
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomeExceptions(message: 'حدث خطأ ما، يرجى المحاولة مرة أخرى');
    }
  }

  Future<User> singInWithEmailAndPassword({
    required email,
    required password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseException catch (e) {
      log(
        'Exception in FirebaseAuthService.singInWithEmailAndPassword: ${e.toString()}',
      );
      if (e.code == 'user-not-found') {
        throw CustomeExceptions(message: 'المستخدم غير موجود');
      } else if (e.code == 'wrong-password') {
        throw CustomeExceptions(message: 'كلمة المرور غير صحيحة');
      } else if (e.code == 'network-request-failed') {
        throw CustomeExceptions(
          message: 'تاكد من اتصالك بالإنترنت، يرجى المحاولة مرة أخرى',
        );
      } else {
        throw CustomeExceptions(message: 'حدث خطأ ما، يرجى المحاولة مرة أخرى');
      }
    } catch (e) {
      log(
        'Exception in FirebaseAuthService.singInWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomeExceptions(message: 'حدث خطأ ما، يرجى المحاولة مرة أخرى');
    }
  }
}
