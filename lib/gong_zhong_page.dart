import 'package:flutter/material.dart';
import 'package:fluttertest/title_bar.dart';

class PublicPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PublicPageState();
}

class PublicPageState extends State<PublicPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar("公众号"), preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Text("这里是公众号"),
      ),
    );
  }
}
