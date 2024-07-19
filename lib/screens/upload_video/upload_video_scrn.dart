import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_add_btn.dart';
import 'package:pi_wall_app/common/widgets/custom_elevated_button.dart';
import 'package:pi_wall_app/common/widgets/custom_text_field.dart';
import 'package:pi_wall_app/common/widgets/wall_screen/custom_wall_container.dart';

class UploadVideoScreen extends StatelessWidget {
  const UploadVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff0C0C0C),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const WallContainer(),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: CustomTextField(
              labelText: 'Video',
              textHint: 'video name',
              iconName: Icons.play_circle_fill_rounded,
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: CustomElevatedButton(
              onPressed: () {},
              label: 'Upload',
              labelColor: Colors.white,
              backgroundColor: const Color(0xff80AEF2),
              width: 350,
              borderRadius: 100,
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: const Color(0Xff0C0C0C),
        child:  CustomAddBtn(btnText: 'select video from files',onPressed: (){}),
      ),
    );
  }
}
