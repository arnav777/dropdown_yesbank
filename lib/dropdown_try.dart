import 'package:flutter/material.dart';

import 'package:dropdown_yesbank/usages/edge-menu-button.dart';
import 'package:dropdown_yesbank/usages/label-menu-button.dart';
import 'package:dropdown_yesbank/usages/menu-button-without-showing-same-selected-item.dart';
import 'package:dropdown_yesbank/usages/normal-menu-button.dart';
import 'package:dropdown_yesbank/usages/scroll-menu-button.dart';

class DropDown extends StatefulWidget {
  DropDown({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
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
