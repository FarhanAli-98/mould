import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/dependencies.dart';
import 'package:template/app/router/controllers.dart';
import 'package:template/app/router/router_generator.dart';



class MainSplashScreen extends StatefulWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  State<MainSplashScreen> createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
   
    Timer(const Duration(seconds: 4),
        () => navigationController.getOffAll(onBoardRoot));
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastLinearToSlowEaseIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImagePaths.mainSplash),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high),
          ),
          child: ScaleTransition(
            scale: _animation,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Center(
                  child: Image.asset(
                    ImagePaths.ultraShineLogo,
                    height: 0.9.sh,
                    // filterQuality: FilterQuality.high,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
