
import 'package:flutter/material.dart';
import 'package:spotify/presentation/intro/pages/get_started.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
        super.initState();
        redirect();
  }


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/spotify_logo.png'),
      ),
    );

  }
  Future<void> redirect()async{
        await Future.delayed(const Duration(seconds: 3));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> GetStarted()));
  }
}
