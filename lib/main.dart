import 'package:flutter/material.dart';
import 'package:lottie_learn/constants/const_page_name.dart';
import 'package:lottie_learn/router/router.dart';
import 'package:lottie_learn/screen/zero_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: CustomRouter.onGenerateRoute,
      initialRoute: ConstPageName.zeroScreen,
      home: ZeroScreen(),
    );
  }
}
