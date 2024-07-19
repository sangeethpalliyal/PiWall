import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_elevated_button.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
import 'package:pi_wall_app/core/configs/assets/app_images.dart';
import 'package:pi_wall_app/core/configs/assets/app_vectors.dart';
import 'package:pi_wall_app/screens/sign_in/sign_in.dart';
import 'package:pi_wall_app/screens/sign_up/sign_up.dart';

class SignInOrUpScreen extends StatelessWidget {
  const SignInOrUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: const BoxDecoration(
                  //color: Colors.amber,
                  image: DecorationImage(image: AssetImage(AppImages.logos))),
            ),
            const SizedBox(
              height: 5,
            ),
            CustomText(
              text: 'PDC',
              fontSize: 30,
            ),
            CustomText(
              text: 'Control of Your Videos',
              fontSize: 23,
            ),
            SizedBox(
              height: 100,
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext contex) => SignInScreen(),
                  ),
                );
              },
              label: 'SIGN IN',
              labelColor: Colors.white,
              backgroundColor: const Color(0xff80AEF2),
              width: 350,
              borderRadius: 50,
              borderColor: const Color(0xff80AEF2),
            ),
            SizedBox(
              height: 10,
            ),
            CustomElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SignUpScreen(),
                  ),
                );
              },
              label: 'SIGN UP',
              labelColor: Colors.white,
              backgroundColor: const Color(0xff80AEF2),
              width: 350,
              borderRadius: 50,
              borderColor: const Color(0xff80AEF2),
            ),
          ],
        ),
      ),
    );
  }
}
