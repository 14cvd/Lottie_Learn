import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_learn/constants/strings.dart';
import 'package:lottie_learn/widget/icon_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
    )
      ..value = 0.5
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Lottie.asset(
            //   "assets/animation/world_animation.json",
            //   controller: _controller,
            //   onLoaded: (composition) {
            //     setState(() {
            //       _controller.duration = composition.duration;
            //     });
            //   },
            // ),

            Lottie.network(
              ConstString.worldLottie,
              controller: _controller,
              onLoaded: (composition) {
                setState(() {
                  _controller.duration = composition.duration;
                });
              },
            ),
            Text(_controller.value.toStringAsFixed(2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconWidget(
                  icon: Icons.arrow_left_outlined,
                  onPressed: () {
                    _controller.reverse(from: _controller.value);
                  },
                ),
                IconWidget(
                  icon: Icons.pause,
                  onPressed: () {
                    _controller.stop();
                  },
                ),
                IconWidget(
                  icon: Icons.arrow_right,
                  onPressed: () {
                    _controller.forward(
                        from: _controller.value == 1 ? 0 : _controller.value);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
 //Lottie.network("https://lottie.host/2e3ee214-126a-4e32-a3a3-96af6e40766c/AbYu3YPrPs.json")