import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                        child: Text(
                          'YES Bank LTD (YES B)',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '\$11661.99',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.greenAccent,
                              ),
                              Text(
                                '+4.00(5.28%)',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 45, 10),
                        child: Text('oh my my'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.home),
                      Icon(Icons.filter),
                      Icon(Icons.star_border),
                      Icon(Icons.person_outline),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
