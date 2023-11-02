import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/custom_widgets/custom_app_bar.dart';
import 'package:rokeebfolio/views/base_ui.dart';
import 'package:rokeebfolio/views/home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        selectedIndex: selectedIndex,
        onTap: (index) {
          changeIndex(index);
        },
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: IndexedStack(
          index: selectedIndex,
          children: [
            const Responsiveness(
              desktop:  HomePage(),
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
