import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/colors.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    this.onTap,
    required this.buttonText,
    this.textColor,
    super.key,
  });
  final Function()? onTap;
  final String buttonText;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap ?? () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            // Change the text color when hovered
            if (states.contains(MaterialState.hovered)) {
              return AppColors
                  .lightPrimary!; // Change to your desired hover color
            }
            return Colors.black; // Default text color
          },
        ),
        // You can customize other button properties here as well
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: textColor,
        ),
      ),
    );
  }
}
