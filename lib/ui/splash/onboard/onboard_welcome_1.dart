import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/dependencies.dart';



class OnBoardWelcome1 extends StatefulWidget {
  const OnBoardWelcome1({Key? key}) : super(key: key);

  @override
  State<OnBoardWelcome1> createState() => _OnBoardWelcome1State();
}

class _OnBoardWelcome1State extends State<OnBoardWelcome1> {
  @override
  @override
  void initState() {
   
    super.initState();
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
              opacity: 0.5,
              image: AssetImage(ImagePaths.onBoardWelcome1),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildTextWidget(),
              SizedBox(
                height: 0.2.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextWidget() {
    return const OnBoardText(
      title: 'Get Access to Training Videos',
      subTitle: 'Lorem ipsum is simply dummy text of the printing 1500s,',
    );
  }
}
