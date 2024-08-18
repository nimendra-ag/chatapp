import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/services/alert_service.dart';
import 'package:chatapp/services/auth_service.dart';
import 'package:chatapp/services/navigation_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

Future<void> setUpFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;

  if (!getIt.isRegistered<AuthService>()) {
    getIt.registerSingleton<AuthService>(AuthService());
  }


  getIt.registerSingleton<NavigationService>(NavigationService());
  getIt.registerSingleton<AlertService>(AlertService());
  
}


