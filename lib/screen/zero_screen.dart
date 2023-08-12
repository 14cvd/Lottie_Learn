import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widget/custom_outlined_button.dart';

class ZeroScreen extends StatefulWidget {
  const ZeroScreen({super.key});

  @override
  State<ZeroScreen> createState() => _ZeroScreenState();
}

class _ZeroScreenState extends State<ZeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              "https://lottie.host/8f4cf3ef-ccb4-4f74-8924-715fa3323de3/oVQ6VECFGT.json"),
          const CustomOutlinedButton()
        ],
      ),
    ));
  }
}
