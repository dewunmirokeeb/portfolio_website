import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/colors.dart';
import 'package:rokeebfolio/components/custom_widgets/custom_text_button.dart';
import 'package:rokeebfolio/components/custom_widgets/styled_container.dart';
import 'package:rokeebfolio/views/base_ui.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    this.preferredHeight = 90,
    this.selectedIndex = 0,
    required this.onTap,
    super.key,
  });
  final double preferredHeight;
  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight);

  @override
  Widget build(BuildContext context) {
    return Responsiveness(
      mobile: MobileAppBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          onTap(index);
        },
      ),
      tablet: Container(),
      desktop: DesktopAppBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          onTap(index);
        },
      ),
    );
  }
}

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({
    required this.onTap,
    required this.selectedIndex,
    super.key,
  });
  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          StyledContainer(
            width: 150,
            height: 35,
            curveRadius: 5,
            child: RichText(
              text: TextSpan(
                text: "PORT",
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                children: [
                  TextSpan(
                    text: "FOLIO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      color: AppColors.lightPrimary!,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({
    this.selectedIndex = 0,
    required this.onTap,
    super.key,
  });
  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 8),
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
          AppTextButton(
            buttonText: "Home",
            textColor:
                selectedIndex == 0 ? AppColors.lightPrimary : Colors.black,
            onTap: () {
              onTap(0);
            },
          ),
          AppTextButton(
            buttonText: "About",
            textColor:
                selectedIndex == 1 ? AppColors.lightPrimary : Colors.black,
            onTap: () {
              onTap(1);
            },
          ),
          AppTextButton(
            buttonText: "Services",
            textColor:
                selectedIndex == 2 ? AppColors.lightPrimary : Colors.black,
            onTap: () {
              onTap(2);
            },
          ),
          AppTextButton(
            buttonText: "Portfolio",
            textColor:
                selectedIndex == 3 ? AppColors.lightPrimary : Colors.black,
            onTap: () {
              onTap(3);
            },
          ),
          AppTextButton(
            buttonText: "Testimonial",
            textColor:
                selectedIndex == 4 ? AppColors.lightPrimary : Colors.black,
            onTap: () {
              onTap(4);
            },
          ),
          AppTextButton(
            buttonText: "Contact",
            textColor:
                selectedIndex == 5 ? AppColors.lightPrimary : Colors.black,
            onTap: () {
              onTap(5);
            },
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
