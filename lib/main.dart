import 'package:flutter/material.dart';
import 'package:dropdown_yesbank/screens/screen1.dart';
import 'package:dropdown_yesbank/screens/screen2.dart';
import 'package:dropdown_yesbank/screens/screen3.dart';
import 'package:dropdown_yesbank/screens/screen4.dart';
import 'package:dropdown_yesbank/dropdown_try.dart';

import 'package:dropdown_yesbank/usages/normal-menu-button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu Button Example',
      home: ScreenOne(),
    );
  }
}

/*
home: MyHomePage(title: 'Menu Button Example'),
 */
