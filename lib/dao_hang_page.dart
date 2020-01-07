import 'package:flutter/material.dart';
import 'package:fluttertest/title_bar.dart';

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar("导航"), preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Text("这里是导航"),
      ),
    );
  }
}
