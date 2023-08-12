import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconWidget extends StatelessWidget {
  IconWidget({super.key, required this.icon, required this.onPressed});
  void Function() onPressed;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(icon));
  }
}
