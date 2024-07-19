import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_add_btn.dart';
import 'package:pi_wall_app/common/widgets/custom_google_btn.dart';
import 'package:pi_wall_app/common/widgets/home_container.dart';
import 'package:pi_wall_app/common/widgets/wall_screen/custom_video_item.dart';
import 'package:pi_wall_app/common/widgets/wall_screen/custom_wall_container.dart';
import 'package:pi_wall_app/screens/home/home_scrn.dart';
import 'package:pi_wall_app/screens/sign_in_or_sign_up/sign_in_or_up_scrn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: const ColorScheme.dark(
            background:  Color(0Xff0C0C0C),
          ),
        ),
        debugShowCheckedModeBanner: false,
      //home: const SignInOrUpScreen(),
      home: HomeScreen(),
      //home: WallContainer() 
      //home: VideoItemContainer(),
    );
  }
}


