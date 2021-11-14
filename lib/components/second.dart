import 'package:flutter/material.dart';
import 'package:travel/components/my_card.dart';

class Second extends StatelessWidget {
  final double appBarHeight = AppBar().preferredSize.height;
  final double navBarHeight = 100.0;
  final double extendedAppBarHeight = 50.0;
  final double topCardHeight = 175.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 175.0,
                width: MediaQuery.of(context).size.width,
                child: myCard(
                    "Italy", "10 activities", "1")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                            appBarHeight -
                            navBarHeight -
                            extendedAppBarHeight -
                            topCardHeight) *
                        .59,
                    width: MediaQuery.of(context).size.width * .5,
                    child: myCard(
                        "China", "24 activities", "2")),
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                          appBarHeight -
                          navBarHeight -
                          extendedAppBarHeight -
                          topCardHeight) *
                      .59,
                  width: MediaQuery.of(context).size.width * .5,
                  child: myCard("Norway", "20 activities", "3"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                            appBarHeight -
                            navBarHeight -
                            extendedAppBarHeight -
                            topCardHeight) *
                        .59,
                    width: MediaQuery.of(context).size.width * .5,
                    child: myCard(
                        "France", "5 activities", "4")),
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                            appBarHeight -
                            navBarHeight -
                            extendedAppBarHeight -
                            topCardHeight) *
                        .59,
                    width: MediaQuery.of(context).size.width * .5,
                    child: myCard(
                        "New York", "50 activities", "5")),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
