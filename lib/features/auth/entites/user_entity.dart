//ببساطة، الـ entities (الكيانات) هي التجريد الأساسي والتمثيل النقي لـ بيانات العمل (Business Data) في تطبيقك
//تمثل البيانات الهامة التي يدور حولها التطبيق، مثل: مستخدم، منتج، طلب شراء، أو مهمة

//1. الـ UserEntity (الكيان)
// هذا الكلاس يمثل "لبّ العمل" (Domain Layer). هو مجرد كائن يحتوي على البيانات الأساسية التي يحتاجها تطبيقك ليعمل، بغض النظر عن مصدر هذه البيانات.

class UserEntity {
  final String? name;
  final String email;
  final String uId;

  UserEntity({this.name, required this.email, required this.uId});

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email, 'uid': uId};
  }
}
