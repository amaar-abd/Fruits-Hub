//ببساطة، الـ entities (الكيانات) هي التجريد الأساسي والتمثيل النقي لـ بيانات العمل (Business Data) في تطبيقك
//تمثل البيانات الهامة التي يدور حولها التطبيق، مثل: مستخدم، منتج، طلب شراء، أو مهمة

class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({required this.name, required this.email, required this.uId});
}
