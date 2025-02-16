import 'package:flutter/material.dart';
import 'package:nearme_app/Features/Register/Forgot_password/Screens/forgot_password.dart';
import 'package:nearme_app/Features/Register/Splash_page/Component/animation_controller.dart';
import 'package:nearme_app/Features/Register/Splash_page/Component/gradient_background.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late SplashAnimationController _splashAnimationController;

  @override
  void initState() {
    super.initState();
   
    _splashAnimationController = SplashAnimationController(
      this, 
      _navigateToNextScreen,  
    );
  }

  
  void _navigateToNextScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>const  ForgotPassword()),  
    );
  }

  @override
  void dispose() {
    _splashAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          Center(
            child: AnimatedBuilder(
              animation: _splashAnimationController.controller,
              builder: (context, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 80,
                      color: Colors.white,
                    ),
                    Transform.translate(
                      offset: Offset(0, _splashAnimationController.translateYAnimation.value),
                      child: ScaleTransition(
                        scale: _splashAnimationController.scaleAnimation,
                        child: Image.asset(
                          'assets/images/Logotransparent1.png',
                          width: 277,
                          height: 277,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}