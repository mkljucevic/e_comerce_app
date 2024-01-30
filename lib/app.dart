import 'package:ecomerce_app/bindings/general_bindings.dart';
import 'package:ecomerce_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecomerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),

      /// Show loader of circular progress indicator meanwhile authentication repository is deciding to show relevant screen
      home: const OnBoardingScreen(),
    );
  }
}
