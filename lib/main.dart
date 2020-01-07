import 'package:flutter/material.dart';
import 'package:fluttertest/gong_zhong_page.dart';
import 'package:fluttertest/home_page.dart';
import 'package:fluttertest/know_leage_page.dart';

import 'dao_hang_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomMenu(),
    );
  }
}

final List<Widget> pageList = [
  HomePage(),
  KnowledgePage(),
  PublicPage(),
  NavigationPage(),
];

class BottomMenu extends StatefulWidget {
  //BottomMenu({Key key, this.title}) : super(key: key);

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  var _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: PageView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => pageList[index],
            itemCount: pageList.length,
            controller: _pageController,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text(
                "首页",
                style: TextStyle(color: Colors.red),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "知识体系",
                  style: TextStyle(color: Colors.red),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "公众号",
                  style: TextStyle(color: Colors.red),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text(
                  "导航",
                  style: TextStyle(color: Colors.red),
                )),
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
              _pageController.jumpToPage(index);
            });
          },
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
