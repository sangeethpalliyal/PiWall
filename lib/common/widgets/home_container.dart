import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
import 'package:pi_wall_app/core/configs/assets/app_images.dart';
import 'package:pi_wall_app/screens/select_wall_scrn/wall_selected.dart';

class CusttomHomeContainer extends StatelessWidget {
  const CusttomHomeContainer({
    super.key,
    required this.wallCount,
  });
  final String wallCount;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => VideoWallSelectedScreen(),
          ),
        );
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.videoWall),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: "Video wall",
                fontColor: Colors.black,
                fontSize: 16,
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                text: wallCount,
                fontColor: Colors.black,
                fontSize: 25,
                fontweight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
