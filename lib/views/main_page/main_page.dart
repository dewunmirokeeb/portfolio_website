import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/colors.dart';
import 'package:rokeebfolio/components/custom_widgets/custom_app_bar.dart';
import 'package:rokeebfolio/components/custom_widgets/styled_container.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

final ScrollController _scrollController = ScrollController();

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        children: const [
          CustomAppBar(),
          SizedBox(height: 100),
          HomePage(),
          SizedBox(height: 1000),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: size.width * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Heloo...",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "I'm ",
                        style: TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Rokeeb Adedokun",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: AppColors.lightPrimary!,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "A Mobile Application Developer",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '''I'm a passionate Flutter developer with over 3 years of hands-on experience in creating stunning mobile applications. My journey in the world of Flutter has been an exciting one, filled with endless opportunities to craft intuitive and visually appealing apps. I've spent years working with Flutter, honing my skills in crafting cross-platform mobile applications that are both beautiful and functional. I've successfully built and published apps to both the Google Play Store and Apple App Store, reaching a global audience and receiving valuable user feedback. My quest for knowledge doesn't stop with Flutter. I'm currently on a journey to explore React Native, aiming to broaden my cross-platform development capabilities. Beyond that, I have my sights set on Swift development, eager to delve into the iOS ecosystem and unlock new realms of innovation. I thrive on challenges and am dedicated to delivering top-notch solutions to meet your mobile app development needs. Whether it's creating a seamless user experience or bringing your unique app idea to life, I'm here to make it happen. Feel free to reach out, and let's embark on an exciting development journey together!''',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              )),
          SizedBox(width: size.width * 0.1),
          const StyledContainer(
            color: Colors.red,
            width: 400,
            height: 600,
          )
        ],
      ),
    );
  }
}
