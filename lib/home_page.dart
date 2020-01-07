import 'package:flutter/material.dart';
import 'package:fluttertest/title_bar.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar("首页"), preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Text("这里是首页"),
      ),
    );
  }
}
