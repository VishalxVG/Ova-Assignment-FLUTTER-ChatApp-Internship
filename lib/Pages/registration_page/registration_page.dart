import 'package:chatapp/Pages/singIn_page.dart/widgets/signIn_widgets.dart';
import 'package:chatapp/common/widgets/buttons_widgets.dart';
import 'package:chatapp/common/widgets/custom_appBar.dart';
import 'package:chatapp/common/widgets/text_Widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: customAppBar(text: "Register"),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  //* more login option text
                  Center(
                    child: text14Normal(
                        text: "Enter your details below to singup"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //* UserName TextFiled
                  appTextField(
                    text: "Username",
                    icon: "assets/icons/user.png",
                    hintText: "Enter your username",
                    func: (value) {},
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //* Email TextFiled
                  appTextField(
                      text: "Email",
                      icon: "assets/icons/user.png",
                      hintText: "Enter your Email",
                      func: (value) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  //* Password TextField
                  appTextField(
                      text: "Password",
                      icon: "assets/icons/lock.png",
                      hintText: "Enter your Password",
                      isObscure: true,
                      func: (value) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  //* Confirm Password TextFiled
                  appTextField(
                      text: "Confirm Password",
                      icon: "assets/icons/lock.png",
                      hintText: "Enter password again",
                      isObscure: true,
                      func: (value) {}),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: text14Normal(
                      text:
                          "By creating a account you agree to our terms and \ncondition",
                    ),
                  ),

                  const SizedBox(
                    height: 60,
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  //* SignUp Button
                  Center(
                    child: appButton(
                      text: "Register",
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
