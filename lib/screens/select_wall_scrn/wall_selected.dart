import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_add_btn.dart';
import 'package:pi_wall_app/common/widgets/wall_screen/custom_video_item.dart';
import 'package:pi_wall_app/common/widgets/wall_screen/custom_wall_container.dart';
import 'package:pi_wall_app/screens/upload_video/upload_video_scrn.dart';

class VideoWallSelectedScreen extends StatelessWidget {
  const VideoWallSelectedScreen({super.key});

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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            WallContainer(),
            VideoItemContainer(videoName: 'Cake'),
            VideoItemContainer(videoName: 'Oreo')
          ],
        ),
      ),
      bottomSheet: Container(
        color: const Color(0Xff0C0C0C),
        child: CustomAddBtn(
          btnText: 'Add new video file',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => UploadVideoScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
