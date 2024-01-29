import 'package:ecomerce_app/app.dart';
import 'package:ecomerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecomerce_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  /// Widgets Binding
  final WidgetsBinding widgetBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// --- GetX Local Storage
  await GetStorage.init();

  /// -- Await Splash screen until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);

  /// -- Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());
}
