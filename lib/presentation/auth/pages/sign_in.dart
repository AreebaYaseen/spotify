import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/buttons/back_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/data/models/auth/signin_user_request.dart';
import 'package:spotify/domain/usecases/auth/signin.dart';
import 'package:spotify/presentation/auth/pages/sign_up.dart';
import 'package:spotify/presentation/home/pages/home_page.dart';

import '../../../service_locator.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

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
      bottomNavigationBar: _signupText(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(
              height: 50,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 30,
            ),
            BasicAppButton(title: 'Sign In ', onPressed: () async {
              var result = await sl<SigninUseCase>().call(
                  params: SigninUserRequest(

                      email: _email.text.toString(),
                      password: _password.text.toString()));
              result.fold((l) {
                var snackbar = SnackBar(content: Text(l,    style: const TextStyle(color: Colors.white), // Test with visible color
                ),  backgroundColor: Colors.red, // Set contrasting background
                  behavior: SnackBarBehavior.floating,);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }, (r) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => HomePage()),
                        (route) => false);
              });
            })
          ],
        ),
      ),
    );
  }


  Widget _registerText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }


  Widget _emailField(BuildContext context) {
    return TextField(
      controller: _email,
      decoration: const InputDecoration(hintText: "Enter Email")
          .applyDefaults(Theme
          .of(context)
          .inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      controller: _password,
      decoration: const InputDecoration(hintText: "Enter Password")
          .applyDefaults(Theme
          .of(context)
          .inputDecorationTheme),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not A Member?',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignUp()));
              },
              child: const Text('Register Now'))
        ],
      ),
    );
  }

}