import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';

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

    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 28, 5),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: NormalMenuButton(
            theme: theme,
          ),
        ),
      ),
    );
  }
}

class NormalMenuButton extends StatefulWidget {
  const NormalMenuButton({
    Key key,
    @required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  _NormalMenuButtonState createState() => _NormalMenuButtonState();
}

class _NormalMenuButtonState extends State<NormalMenuButton> {
  String selectedKey;

  List<String> keys = [
    'Overviewy',
    'Components',
    'Technical',
    'News',
    'Historical Data',
  ];

  @override
  void initState() {
    selectedKey = keys[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Widget normalChildButton = SizedBox(
      width: 143,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Text(
                selectedKey,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              width: 8,
              height: 17,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Text(
            'Normal usage of menu button',
            style: widget.theme.textTheme.headline2.copyWith(
              fontSize: 18,
            ),
          ),
        ),*/
        MenuButton(
          child: normalChildButton,
          items: keys,
          dontShowTheSameItemSelected: false,
          topDivider: true,
          itemBuilder: (value) => Container(
            height: 40,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
            child: Text(value),
          ),
          toggledChild: Container(
            color: Colors.white,
            child: normalChildButton,
          ),
          divider: Container(
            height: 1,
            color: Colors.grey,
          ),
          onItemSelected: (value) {
            setState(() {
              selectedKey = value;
            });
          },
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: const BorderRadius.all(
                Radius.circular(3.0),
              ),
              color: Colors.white),
          onMenuButtonToggle: (isToggle) {
            print(isToggle);
          },
        ),
      ],
    );
  }
}
