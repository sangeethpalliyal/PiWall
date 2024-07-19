import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
import 'package:pi_wall_app/core/configs/assets/app_images.dart';

class CustomGoogleBtn extends StatelessWidget {
  const CustomGoogleBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          //color: Colors.amber,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: Colors.white, width: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.google_logo),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              CustomText(text: 'Google')
            ],
          ),
        ),
      ),
    );
  }
}
