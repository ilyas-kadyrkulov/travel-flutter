import 'package:flutter/material.dart';
import 'package:travel/components/my_card.dart';

class First extends StatelessWidget {
  final double appBarHeight = AppBar().preferredSize.height;
  final double navBarHeight = 100.0;
  final double extendedAppBarHeight = 50.0;
  final double topCardHeight = 175.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 175.0,
                width: MediaQuery.of(context).size.width,
                child: myCard(
                    "Futuro Hotel", "70 euro per day", "hotel1")),
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
                        .58,
                    width: MediaQuery.of(context).size.width * .5,
                    child: myCard(
                        "Kekova Hotel", "70 euro per day", "hotel2")),
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                      appBarHeight -
                      navBarHeight -
                      extendedAppBarHeight -
                      topCardHeight) *
                      .59,
                  width: MediaQuery.of(context).size.width * .5,
                  child: myCard("Orion Hotel", "120 euro per day", "hotel3"),
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
                        .58,
                    width: MediaQuery.of(context).size.width * .5,
                    child: myCard(
                        "Park Hotel", "50 euro per day", "hotel4")),
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                        appBarHeight -
                        navBarHeight -
                        extendedAppBarHeight -
                        topCardHeight) *
                        .59,
                    width: MediaQuery.of(context).size.width * .5,
                    child: myCard(
                        "Ramira Ray Hotel", "90 euro per day", "hotel5")),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
