import 'package:flutter/material.dart';
import 'package:pi_wall_app/common/widgets/custom_text.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.label,
    required this.labelColor,
    required this.backgroundColor,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 0,
    this.labelSize = 14,
    this.borderColor = Colors.cyan,
  });
  final void Function() onPressed;
  final double height;
  final double width;
  final double borderRadius;
  final String label;
  final double labelSize;
  final Color labelColor;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height, // Adjust the height as needed
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: CustomText(
            text: label,
            fontSize: labelSize,
            fontColor: labelColor,
          ),
        ),
      ),
    );
  }
}
