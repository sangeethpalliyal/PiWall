import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_add_btn.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
import 'package:pi_wall_app/common/widgets/home_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20,left: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                CustomText(text: 'Hey,',fontSize: 30,),
                CustomText(text: 'User',fontSize: 30,),
                CustomText(text: 'Sangeeth',fontSize: 20,),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    CusttomHomeContainer(wallCount: '1',),
                    Spacer(),
                    CusttomHomeContainer(wallCount: '2',)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        child:  CustomAddBtn(btnText: 'Add new device',onPressed: (){}),
        color: const Color(0Xff0C0C0C),
      ),
    );
  }
}