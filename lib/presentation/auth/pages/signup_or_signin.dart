import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/helpers/is_dark.dart';
import 'package:spotify/common/widgets/buttons/back_bar.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';
import 'package:spotify/presentation/auth/pages/sign_in.dart';
import 'package:spotify/presentation/auth/pages/sign_up.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackBar(),
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBg),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.logo,
                    height: 200,
                    width: 200,
                  ),
                  const Text(
                    'Enjoy Listening To The Music',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Spotify is a proprietary Swedish audio streaming and media service provider',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: BasicAppButton(
                              title: "Register", onPressed: (
                              ) {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context )=> SignUp()));
                          })),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 1,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context )=> SignIn()));

                              },
                              child:  Text(
                                'Sign in',
                                style: TextStyle(
                                    color: context.isDarkMode?Colors.white: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
