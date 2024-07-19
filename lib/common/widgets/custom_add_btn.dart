import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';

class CustomAddBtn extends StatelessWidget {
  const CustomAddBtn({
    super.key,
    required this.btnText,
    required this.onPressed,
  });
  final String btnText;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: Container(
          height: 50,
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.5),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                child: const Icon(Icons.add_circle_outline),
              ),
              const SizedBox(
                width: 20,
              ),
              CustomText(text: btnText)
            ],
          ),
        ),
      ),
    );
  }
}
