import 'package:flutter/material.dart';
import 'screens/base_screen.dart';

void main()
{
  runApp(MyApp());

  MyApp app = MyApp();
  Widget a = MyApp();
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      // to don't show debug logo
      home: BaseScreen(),
    );
  }
}
