import 'package:flutter/material.dart';
import 'package:spotify/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/themes/app_colors.dart';
import 'package:spotify/presentation/choose_mode/pages/choose_mode_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            decoration:  const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.introBG), fit: BoxFit.fill)),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage(
                      AppImages.logo,
                    ),
                    height: 200,
                    width: 200,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,

                ),
                const SizedBox(height: 20,),
                BasicAppButton(title: 'Get Started', onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ChooseModeScreen()));
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
