import 'package:flutter/material.dart';
import '../configs/colors.dart';

class SensorsScreen extends StatelessWidget {
  const SensorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: kCardGradient),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    height: 600,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            child: SizedBox(
                              width: 350,
                              height: 650,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Center(
                                      child: Container(
                                        width: 230,
                                        height: 230,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: kPrimaryColor),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: SizedBox(width: 350, height: 350, child: CustomRipple()),
                                  ),
                                  Positioned(
                                      top: 100,
                                      right: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      top: 115,
                                      right: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Positioned(
                                      top: 100,
                                      left: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      top: 115,
                                      left: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 100,
                                      right: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 115,
                                      right: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 100,
                                      left: 40,
                                      child: SizedBox(
                                          width: 100,
                                          height: 100,
                                          child: CustomRipple())),
                                  Positioned(
                                      bottom: 115,
                                      left: 55,
                                      child: SizedBox(
                                          width: 70,
                                          height: 70,
                                          child: CustomRipple())),
                                  Center(
                                    child: SizedBox(
                                      height: 650,
                                      child: Image.asset(
                                        'assets/bird_view_tesla.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomRipple extends StatefulWidget {
  CustomRipple({Key? key}) : super(key: key);

  @override
  _CustomRippleState createState() => _CustomRippleState();
}

class _CustomRippleState extends State<CustomRipple>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    _animation = Tween<double>(begin: 0.4, end: 0.8).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor, width: 8),
            shape: BoxShape.circle),
      ),
    );
  }
}
