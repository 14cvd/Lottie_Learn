import 'package:flutter/material.dart';
import 'package:lottie_learn/constants/color.dart';
import 'package:lottie_learn/constants/strings.dart';

import '../constants/const_page_name.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(context, ConstPageName.mainScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return ConstColor.getColor;
            }
            return ConstColor.defaultColor;
          },
        ),
      ),
      child: const Text(
        ConstString.clickMe,
        style: TextStyle(color: ConstColor.getColor),
      ),
    );
  }
}
