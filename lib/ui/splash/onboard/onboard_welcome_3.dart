import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/app/dependencies.dart';
import 'package:template/ui/splash/onboard/widgets/auth_button.dart';


class OnBoardWelcome3 extends StatefulWidget {
  const OnBoardWelcome3({Key? key}) : super(key: key);

  @override
  State<OnBoardWelcome3> createState() => _OnBoardWelcome3State();
}

class _OnBoardWelcome3State extends State<OnBoardWelcome3> {
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
              image: AssetImage(ImagePaths.onBoardWelcome3),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildTextWidget(),
              SizedBox(
                height: 0.05.sh,
              ),
              AuthButton(
                  buttonText: "LETS GO",
                  onPressed: () {
                    
                   
                  }),
              SizedBox(
                height: 0.07.sh,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextWidget() {
    return const OnBoardText(
      title: 'Get Your Appointment Now',
      subTitle: 'Lorem ipsum is simply dummy text of the printing 1500s,',
    );
  }
}
