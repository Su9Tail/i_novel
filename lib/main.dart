import 'package:flutter/material.dart';
import 'package:i_novel/pages/discovery.dart';
import 'package:i_novel/pages/search.dart';

class App extends StatefulWidget {
  @override
  State createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  AppBar appBar = AppBar(
    title: Text('书架'),
  );
  Container body = Container(
    child: Text(''),
  );
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iNovel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: appBar,
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('书架'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              title: Text('发现'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('我的'),
            ),
          ],
          currentIndex: index,
          onTap: handleTap,
        ),
      ),
    );
  }

  void handleTap(tappedIndex) {
    switch (tappedIndex) {
      case 0:
        setState(() {
          appBar = AppBar(
            title: Text('书架'),
          );
          body = Container(
            child: Text(''),
          );
          index = tappedIndex;
        });
        break;
      case 1:
        setState(() {
          appBar = AppBar(
            title: Text('发现'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: null),
            ],
          );
          body = Container(
            child: Discovery(),
          );
          index = tappedIndex;
        });
        break;
      case 2:
        setState(() {
          appBar = AppBar(
            title: Text('我的'),
          );
          body = Container(
            child: Text(''),
          );
          index = tappedIndex;
        });
        break;
      default:
        break;
    }
  }
}

void main() => runApp(App());
