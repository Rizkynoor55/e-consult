import 'package:flutter/material.dart';

class GojekAppBar extends AppBar {
  GojekAppBar()
      : super(
            elevation: 0.25,
            backgroundColor: Colors.white,
            flexibleSpace: _buildGojekAppBar());

  static Widget _buildGojekAppBar() {
    return new Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "assets/img_gojek_logo.png",
            height: 50.0,
            width: 100.0,
          ),
        ],
      ),
    );
  }
}
