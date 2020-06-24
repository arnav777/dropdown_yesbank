import 'package:flutter/material.dart';
import 'package:dropdown_yesbank/screens/screen1.dart';
import 'package:dropdown_yesbank/dropdown_try.dart';

import 'package:dropdown_yesbank/usages/edge-menu-button.dart';
import 'package:dropdown_yesbank/usages/label-menu-button.dart';
import 'package:dropdown_yesbank/usages/menu-button-without-showing-same-selected-item.dart';
import 'package:dropdown_yesbank/usages/normal-menu-button.dart';
import 'package:dropdown_yesbank/usages/scroll-menu-button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Menu Button Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: NormalMenuButton(
                  theme: theme,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ScrollPhysicsMenuButton(
                  theme: theme,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: EdgeMenuButton(
                  theme: theme,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: MenuButtonWithoutShowingSameSelectedIitem(
                  theme: theme,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: MenuButtonLabel(
                  theme: theme,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
