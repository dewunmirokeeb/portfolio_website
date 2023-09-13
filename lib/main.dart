import 'package:flutter/material.dart';
import 'package:rokeebfolio/components/colors.dart';
import 'package:rokeebfolio/core/route.dart';
import 'package:rokeebfolio/views/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rokeebfolio',
      theme: ThemeData(
        primaryColor: AppColors.lightPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
