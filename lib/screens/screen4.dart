import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_button/menu_button.dart';
import 'package:dropdown_yesbank/usages/normal-menu-button.dart';

// SCREEN FOUR

class ScreenFour extends StatefulWidget {
  @override
  _ScreenFourState createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                        padding: const EdgeInsets.only(bottom: 12),
                        child: MyHomePage(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 260,
                        height: 110,
                        child: Image.asset('assets/images/yesbank3.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 260,
                        height: 110,
                        child: Image.asset('assets/images/yesbank3.jpg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 260,
                        height: 110,
                        child: Image.asset('assets/images/yesbank3.jpg'),
                      ),
                    ],
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
