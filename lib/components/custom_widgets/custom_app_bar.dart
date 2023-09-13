import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/colors.dart';
import 'package:rokeebfolio/components/custom_widgets/custom_text_button.dart';
import 'package:rokeebfolio/components/custom_widgets/styled_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 85,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 10),
            color: Color.fromARGB(255, 241, 240, 238),
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledContainer(
            width: 230,
            height: 45,
            curveRadius: 5,
            child: RichText(
              text: TextSpan(
                text: "PORT",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                children: [
                  TextSpan(
                    text: "FOLIO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: AppColors.lightPrimary!,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: size.width * 0.06),
          const AppTextButton(
            buttonText: "Home",
          ),
          const AppTextButton(
            buttonText: "About",
          ),
          const AppTextButton(
            buttonText: "Services",
          ),
          const AppTextButton(
            buttonText: "Portfolio",
          ),
          const AppTextButton(
            buttonText: "Testimonial",
          ),
          const AppTextButton(
            buttonText: "Contact",
          ),
          SizedBox(width: size.width * 0.06),
          const StyledContainer(
            width: 50,
            height: 50,
            child: Icon(
              Icons.dark_mode_outlined,
            ),
          )
        ],
      ),
    );
  }
}
