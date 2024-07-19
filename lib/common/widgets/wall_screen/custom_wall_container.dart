import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
import 'package:pi_wall_app/core/configs/assets/app_images.dart';

class WallContainer extends StatelessWidget {
  const WallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
          height: 135,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.videoWall),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: 'Video Wall',
                      fontColor: Colors.black,
                      fontSize: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      text: '1',
                      fontColor: Colors.black,
                      fontSize: 20,
                      fontweight: FontWeight.bold,
                    ),
                  ],
                ),
                CustomText(
                  text: 'ACTIVE',
                  fontColor: Color(0xff05A128),
                  fontSize: 16,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
