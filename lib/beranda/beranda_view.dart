import 'package:flutter/material.dart';
import 'package:econsult/constans.dart';
import 'package:econsult/beranda/beranda_model.dart';
import 'package:econsult/beranda/beranda_gojek_appbar.dart';
//import 'dart:async';
//import 'dart:io';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  List<GojekService> _gojekServiceList = [];

  @override
  Widget build(BuildContext context) {
    return new SafeArea(
      child: new Scaffold(
        appBar: new GojekAppBar(),
        backgroundColor: GojekPalette.grey,
        body: new Container(
          child: new ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
            ],
          ),
        ),
      ),
    );
  }
}
