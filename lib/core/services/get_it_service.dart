import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_iplm.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';
  //"أريد نسخة واحدة فقط من FirebaseAuthService تعمل على مستوى التطبيق بالكامل".

final GetIt getIt = GetIt.instance;

void setupGetItService() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoIplm(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
