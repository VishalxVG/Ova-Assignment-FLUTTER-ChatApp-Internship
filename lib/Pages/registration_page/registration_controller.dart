import 'package:chatapp/Pages/registration_page/bloc/register_page_bloc.dart';
import 'package:chatapp/common/widgets/popup_message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterController {
  final BuildContext context;
  const RegisterController(this.context);

  void handleEmailRegister() async {
    final state = context.read<RegisterBlocs>().state;

    String userName = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.rePassword;

    if (userName.isEmpty) {
      toastInfo("User name cannot be empty");
      return;
    }
    if (email.isEmpty) {
      toastInfo("Email cannot be empty");
      return;
    }

    if (password.isEmpty) {
      toastInfo("Password cannot be empty");
      return;
    }

    if (rePassword.isEmpty) {
      toastInfo("Confirm password cannot be empty");
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);

        toastInfo("An email is sent to your email to register");

        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        toastInfo("The password provided is too weak");
      }

      if (e.code == "invalid-email") {
        toastInfo("Your email id is invalid");
      }

      if (e.code == "email-already-in-use") {
        toastInfo("The email is already in use");
      }
    }
  }
}
