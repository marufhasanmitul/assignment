import 'package:assignment/data/Model/auth_utility.dart';
import 'package:assignment/ui/screen/bottomNavBaseScreen.dart';
import 'package:assignment/ui/screen/auth/loginScreen.dart';
import 'package:assignment/ui/utils/assets_utils.dart';
import 'package:assignment/ui/widget/screen_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  Future<void> navigateToLogin() async {
    final bool isLoggedIn=await AuthUtility.checkIfUserLoggedIn();
    if(mounted){
      Future.delayed(Duration(seconds: 3)).then((_) =>
          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>isLoggedIn ? BottomNavBaseScreen():LoginScreen()), (route) => false)
      );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ScreenBackground(
        child: Center(
          child:SvgPicture.asset(assetsUtils.logoSvg,
            width: 90,
            fit: BoxFit.scaleDown,
          ) ,
        ),
      )
    );
  }
}
