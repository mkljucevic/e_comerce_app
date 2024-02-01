import 'package:ecomerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecomerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecomerce_app/utils/helpers/network_manager.dart';
import 'package:ecomerce_app/utils/popups/full_screen_loader.dart';
import 'package:ecomerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  /// Variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  /// Send reset password email
  sendPasswordResetEmail() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog('Proccessing your information...',
          'assets/images/animations/141594-animation-of-docer.json');

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        // Remove loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(
        title: 'Email sent',
        message: 'Email link sent to reset your password.',
      );

      // Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      // Remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog('Proccessing your information...',
          'assets/images/animations/141594-animation-of-docer.json');

      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loader
        TFullScreenLoader.stopLoading();
        return;
      }

      // Send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show Success Message
      TLoaders.successSnackBar(
        title: 'Email sent',
        message: 'Email link sent to reset your password.',
      );
    } catch (e) {
      // Remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
