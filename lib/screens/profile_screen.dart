import 'package:ecar/configs/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool _active1 = true;
  bool _active2 = true;
  bool _active3 = true;

  void _startTap() {
    setState(() {
      _active1 = !_active1;
    });
  }

  void _LockTap() {
    setState(() {
      _active2 = !_active2;
    });
  }

  void _unLockTap() {
    setState(() {
      _active3 = !_active3;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children:
            [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 35),
                child: Text(
                  'Your TESLA',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w200),
                ),
              ),
              Image.asset('assets/homepage_tesla.png'),
              GestureDetector(
                onTap: _startTap,
                child: CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 5.0,
                  animation: false,
                  percent: 1.0,
                  center: Center(
                    child: Icon(
                      Icons.power_settings_new,
                      size: 80,
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: _active1 ? kSecondColor : kPrimaryColor,
                  backgroundColor: kProgressBackGroundColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Start / Stop',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              /*Row(
                children:
                [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: _LockTap,
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 3.0,
                          animation: false,
                          percent: 1.0,
                          center: Center(
                            child: Icon(
                              Icons.lock_outline,
                              size: 40,
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: _active2 ? kSecondColor : kPrimaryColor,
                          backgroundColor: kProgressBackGroundColor,
                        ),
                      ),
                      Text(
                        'Lock',
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: _unLockTap,
                        child: CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 3.0,
                          animation: false,
                          percent: 1.0,
                          center: Center(
                            child: Icon(
                              Icons.lock_open_outlined,
                              size: 40,
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: _active3 ? kSecondColor : kPrimaryColor,
                          backgroundColor: kProgressBackGroundColor,
                        ),
                      ),
                      Text(
                        'Unlock',
                      ),
                    ],
                  ),
                ],
              ),*/
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: _LockTap,
                child: LinearPercentIndicator(
                  lineHeight: 100,
                  barRadius: Radius.circular(100),
                  animation: false,
                  percent: 1.0,
                  center: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Icon(
                          Icons.lock_outline,
                          size: 40,
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Icon(
                          Icons.lock_open_outlined,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                  progressColor: _active2 ? Colors.grey[600] : kPrimaryColor,
                  backgroundColor: kProgressBackGroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

