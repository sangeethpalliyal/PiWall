import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';

class VideoItemContainer extends StatelessWidget {
  const VideoItemContainer({
    super.key,
    required this.videoName,
  });
  final String videoName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: const Color(0xff424242),
            borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              const Icon(Icons.play_circle_fill_rounded),
              const Spacer(),
              CustomText(
                text: videoName,
                fontSize: 17,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
