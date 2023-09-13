import 'package:flutter/material.dart';
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
    return ListView(
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      children: const [
        CustomAppBar(),
        SizedBox(height: 50),
        HomePage(),
        SizedBox(height: 1000),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [],
          ),
          StyledContainer(
            color: Colors.red,
            width: 350,
            height: 550,
          )
        ],
      ),
    );
  }
}
