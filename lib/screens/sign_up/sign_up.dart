import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_elevated_button.dart';
import 'package:pi_wall_app/common/widgets/custom_google_btn.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
import 'package:pi_wall_app/common/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff0C0C0C),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Lets,',
                fontSize: 30,
              ),
              CustomText(
                text: 'Get',
                fontSize: 30,
              ),
              CustomText(
                text: 'Started',
                fontSize: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const CustomTextField(
                    labelText: 'Email',
                    textHint: 'Enter Email ID',
                    iconName: Icons.email_rounded,
                  ),
                  const CustomTextField(
                    labelText: 'Password',
                    textHint: 'Enter password',
                    iconName: Icons.remove_red_eye_rounded,
                  ),
                  const CustomTextField(
                    labelText: 'Password',
                    textHint: 'Re-enter password',
                    iconName: Icons.remove_red_eye_rounded,
                  ),
                  CustomElevatedButton(
                    onPressed: () {},
                    label: 'SIGN IN',
                    labelColor: Colors.white,
                    backgroundColor: const Color(0xff80AEF2),
                    width: 350,
                    borderRadius: 50,
                    borderColor: const Color(0xff80AEF2),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: CustomText(
                  text: 'or continue with',
                  fontColor: const Color(0xff424242),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomGoogleBtn(),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Already have an account?',
                    fontSize: 13,
                    fontweight: FontWeight.w300,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: CustomText(
                      text: 'Signin',
                      fontweight: FontWeight.bold,
                      underline: true,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
