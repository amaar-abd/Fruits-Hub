import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/auth/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], email: map['email'], uId: map['uid']);
  }
  
}
