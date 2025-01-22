import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/buttons/back_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/presentation/auth/pages/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackBar(
        title: Image(
          image: AssetImage(
            AppImages.logo,
          ),
          height: 150,
          width: 150,
        ),
      ),
      bottomNavigationBar: _signinText(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(
              height: 50,
            ),
            _fullNameField(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 30,
            ),
            BasicAppButton(title: 'Register', onPressed: () {})
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return const Text(
    'Register',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25,
    ),
    textAlign: TextAlign.center,
  );
}

Widget _fullNameField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(hintText: "Full Name")
        .applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _emailField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(hintText: "Enter Email")
        .applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _passwordField(BuildContext context) {
  return TextField(
    decoration: const InputDecoration(hintText: "Enter Password")
        .applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _signinText(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Do you have an account?',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const SignIn()));
            },
            child: const Text('Sign in'))
      ],
    ),
  );
}
