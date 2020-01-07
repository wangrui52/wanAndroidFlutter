import 'package:flutter/material.dart';
import 'package:fluttertest/title_bar.dart';

class KnowledgePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KnowledgePageState();
}

class KnowledgePageState extends State<KnowledgePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
          child: MyAppBar("知识体系"), preferredSize: Size.fromHeight(50)),
      body: Center(
        child: Text("这里是知识体系"),
      ),
    );
  }
}
