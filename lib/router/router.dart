import 'package:flutter/material.dart';
import 'package:lottie_learn/constants/const_page_name.dart';
import 'package:lottie_learn/screen/main_screen.dart';
import 'package:lottie_learn/screen/zero_screen.dart';

class CustomRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ConstPageName.zeroScreen:
        return MaterialPageRoute(builder: (_) => const ZeroScreen());
      case ConstPageName.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
   
      default:
        return null;
    }
  }
}
